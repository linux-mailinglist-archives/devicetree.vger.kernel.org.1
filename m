Return-Path: <devicetree+bounces-270931-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6CdBCRn0p2mtmwAAu9opvQ
	(envelope-from <devicetree+bounces-270931-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:58:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D66E1FD063
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:58:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 52AED30AF073
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 08:53:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4EDB386C15;
	Wed,  4 Mar 2026 08:53:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="KffHlzLf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ECE4384224
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 08:53:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772614432; cv=pass; b=YRO9pXVjnw3/dgw/9nQShof+4UDFmacxXvF6uWxo3AgFVVG992l0JaX84ByxeFooT4FraIANTUc1lBEX1HjIdi03Y1CuUwBOWgAV5Lb81oFfrPYIdG5eYmp+4hccu786p63nrUS8088MXluFAQYBRwiRlGZOyL0BC1zGpvc5XG4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772614432; c=relaxed/simple;
	bh=yT7NefqTAGrFVHIy1qkdkhat9hiWg28r0H1XF+xbQgI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Tj7Obf/SN+P6KeR8jVGyLRGHexhKnOPZgo3yLA9FsfPQmKGTOlMnj/qo7Z4axd6WZ6XGYKWVKS8gMjQ41c/+uJXLSA2/A/5z55EhglOPH3pcK7d6/ls2cqLeor0GsfUAFlIqBDCqcJTKH4HibivHa4j+Op3XXLCpqU1N98y5yfY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=KffHlzLf; arc=pass smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b9358bc9c50so717194666b.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 00:53:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772614430; cv=none;
        d=google.com; s=arc-20240605;
        b=HDJ/4qBIWU5Ypffvu/7Umw593No63z+pZIHqToADntSTeR5P5N4kzeA60S/+CbB6Y+
         HADG/cxQZcQ/xu3xLvQ4Yl5HKj1STcR9NeD7fKVoj350tViBdDXEj05/uhxWwElkGMvX
         tYBUNGBFpTTUKhL11T6TQKuYDorNcRJ8GsfM02ogt5rLu9rSph6hsaPsKOOZKCWlTm/F
         vvkx2L2ck4MorsE6mKdRAhOpFeKp8bExWnqfHgWhu3dHNb6V2nxOKvpl7yWjigFNmRXs
         obMb3QQBuBi3Z7WG9JTiKkNcBXjHhELFWSYK3XwCEgYSdxFYPsW0L9nRzr40caSioyzi
         WBCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=j29FLFU3PPvos/M6xBeZT5tWrNvRxgX7xq1kd2xix8w=;
        fh=lKWzprvH2igSuIBmTO6BCnDCJJeuKm9q7ZhK2a6sUaU=;
        b=dD4AIFrjCQwyuepGDH5aqnB1qxq0LrQCvImh0DENmiQaef61FiS9EfhKzac32b4onw
         J/Jdt/yROVVLqBG5U7IJbT3M7SVxIZsR/TYPM3kahaOwQE3+FlNBi7F0BlkcPq+gbRXi
         d4irKR+5TK8FF/SJfbty52uJe78tH+lf/7Is1fVWunlizS8Mci3Uow9hgYGDFM9IxkKf
         uImjb5LjSoaRtJBNkV7KacF2fuRtd9XB1Y80LWupvCP/RlwRIus0r5Q/iLC6DbZH7UB8
         IXbuq++GT44eoGePkJY+ip4khf0j0AVj9RvP48ORitvoNFg/mDI5d9/y4HHOGpsJIbld
         S5Mw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1772614430; x=1773219230; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j29FLFU3PPvos/M6xBeZT5tWrNvRxgX7xq1kd2xix8w=;
        b=KffHlzLf6WMPHlRiYT5YVfz9vDCsLLczywDJCXSc0eel254pQpJTwzGelcGhhXmJAz
         shSvwAD34xsHDbk3WY0FQ8boh8YH8Pr8xKw54B3ndPAP58YsBWeuwiZvQ0g8GeA4C6oO
         7ixJM3OXOScAIoh5AQFPGSBN0mrCDA9hsshuyzRy6EbNaHUsLwuMuHMpCDgad+A/uDfP
         QTMQfVwHcnwAcK54JJprcwQzaLcWFkSFSB5Qq+D8VAOxzuxI7NAvVlc6TsGPbnII9tGj
         N2i1i+N0FKAiKBqgD6fo+58P7OYwi6uE3wmVmPnkBCy7ofC0dOEnEhh5wjj6XcoxyP7q
         Iy3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772614430; x=1773219230;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=j29FLFU3PPvos/M6xBeZT5tWrNvRxgX7xq1kd2xix8w=;
        b=P9Q+1hboeN9jUiExYivsk37KQlbCSZQLbDmIHIYZ4o1RZ8P0dDRrPusgfpRMZ1mQon
         iostehS4T+U2uUp+ek0eFlTYtFj7eXgFDuvASIypqxes2QQMYhA0/4Ka84xtvfTkJT2j
         Ue7pv7aOYVb51L2RbwTk2RWymOrXhenb9vU91H9vdZzY6CloAH44DcUVRLZYsba73nzo
         pJwguyt9YiDNXct/P6blPR9WKOvV/fDr8hNNCqNhVZ9Dq7WwldAjRChuhu5YxLImcc/2
         WFOr7TmT1U3rAwgKivjPuiydC3WuMGIhV4R0dkzhWmATIXQnxIGzTcPFQu6Mkuw50yNw
         31cg==
X-Forwarded-Encrypted: i=1; AJvYcCVfBLLTvItZry9b3V8p8NfJsw4DSitCPuQHp31gwf/hnlLRBOLMyhsIA75FZsMyYV0JQfVAGUxytT7j@vger.kernel.org
X-Gm-Message-State: AOJu0YyuwAgwdXWw8lBZksUZbShMyMjvEvZpdoNC6zJigQ16lMnMrnNA
	rGwTn7ZyW2+VVUtAJu4RIck8UpZiFcBqn5g/gnAV0i+N/2QBG2lkmAiFM6ImPGa0xV4yDcvLFcJ
	DHs+fbYCz1u2szSgbzQoprNMpjaBTN7Dsef07YLROnA==
X-Gm-Gg: ATEYQzwlqIfY7rn4lPADJG5P7PjF8Nf73iT341l44NkkuPANKOynNwvsFAUQzJ+OpzJ
	CgwCzwJl5BkDZOCm1Vnf+asOgQdbFPuoCOpWdDlq19iEsY319iamV4vvy9v7XeUvBbuzeMsIL0z
	SdYshR+o4eQZXv5iL1Cz6/hckp7t7ODuipUnfL+esRCGpUX8g1d2faBIKs0rmxlDjM8dYczgPMX
	ydQccoGbAIwODEKebCWt5Agstco/nF6wCqrPyxps/LJC88W1d8vTOOKSam0PQVg51Irx+3VnfgI
	ODeq4A==
X-Received: by 2002:a17:907:7286:b0:b87:322d:a8bd with SMTP id
 a640c23a62f3a-b93f11f02b0mr65154566b.24.1772614429853; Wed, 04 Mar 2026
 00:53:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260303-bq25792-v1-0-e6e5e0033458@flipper.net>
 <20260303-bq25792-v1-1-e6e5e0033458@flipper.net> <20260304-fantastic-butterfly-of-abracadabra-8fb2c4@quoll>
In-Reply-To: <20260304-fantastic-butterfly-of-abracadabra-8fb2c4@quoll>
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 4 Mar 2026 12:53:41 +0400
X-Gm-Features: AaiRm50ufiiK0yXNWebTLHuETT9y1G6OWqIkNChKwnDCLZsvEHEo3p_IwvxLg7M
Message-ID: <CAKTNdwGz5Hr0jwd2-_JjzbTzgsidsWs2LAG8+LRMds=7duLKrw@mail.gmail.com>
Subject: Re: [PATCH 01/11] dt-bindings: mfd: ti,bq25703a: Expand to include BQ25792
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chris Morgan <macromorgan@hotmail.com>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Sebastian Reichel <sre@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 7D66E1FD063
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270931-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[kernel.org,hotmail.com,gmail.com,vger.kernel.org,collabora.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[flipper.net:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[flipper.net:dkim,mail.gmail.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Wed, Mar 4, 2026 at 12:33=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Tue, Mar 03, 2026 at 07:32:46PM +0400, Alexey Charkov wrote:
> >            enable-gpios:
> >              description:
> >                The BQ25703 may require both a register write and a GPIO
> > @@ -74,6 +65,60 @@ properties:
> >            - regulator-min-microvolt
> >            - regulator-max-microvolt
> >
> > +  allOf:
>
> Heh, why bothering to test your code before sending...

Yep, my bad, sorry for the noise. Testing schema separately from a
common W=3D1 build, runtime test on the hardware and checkpatch just
refuses to enter muscle memory, but I'll get there one day.

Best regards,
Alexey

