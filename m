Return-Path: <devicetree+bounces-259176-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gCkSCOe8dGk39QAAu9opvQ
	(envelope-from <devicetree+bounces-259176-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 13:36:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD3D7D9B7
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 13:36:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 45C6D3009F87
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 12:36:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBBD72EDD4D;
	Sat, 24 Jan 2026 12:36:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZKXZuKU6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3493728EA72
	for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 12:36:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769258207; cv=none; b=TDktA7PZ9APLaGu/as22fgrmj+XtFBCPkGXSc9yYgxLbnI1qZuWI4+7nDJte65f6ovq1X8KhzgTkI43TfSu7ljzJwDb8JA+mSssFfk4k/LYjAkgJpWtxoskZxZZW/MCB5U5hIH6DBheB2D/tDTyPjTBQkAuzfOINn0Wmp9Ofc9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769258207; c=relaxed/simple;
	bh=2lpZPiehnZVWy67SwNKoHY2awngWTM8se8vqxPxB49s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QtOhDpldJfKepVrIk4hIo+4HN/L3KCKaySx4Igm6BatpD2EWz3gtPWz9NdpRIx54Oiy/uiZxkX09X4p3wWSUFYeVXMOMhm4b14bHTcxk9VLaY0JJO3EwGf0gNus0ZABhYClWz3JCZh1Lg9+5iOAG1AHVnOX2oL/b760pjIxvOMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZKXZuKU6; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-42fb2314f52so1716292f8f.0
        for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 04:36:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769258204; x=1769863004; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aWxFjlQ15iLHcZ2sWOA5/KipFAdTrRSE3rE8bBRoPNA=;
        b=ZKXZuKU6H3gpgJsBv4nBKoSRZurn8Uq84zCD5msjjPeLSfiZHak/zkvW5uVpmUeVvu
         IQ7b6BTrwj2w9L8U1cdLDndX2TzL/nBRBVaPPsIn8I0I/BC+UX1pSiEKnHgOzQiv3Kqr
         2Dtd7OglaljVFT4EHPwI70g2PDFnu58bcaWX3Kf6JXerqh4rxnVtsCzr7ljxQH6OVjNE
         So2h+8zVCiz7V+tb9gMd9NOUm0WTkWZDP1zmhJnqmKNTG7AzfDCANQk7mxiXsXVVb87s
         1WGs3mc42WxRCY8yXugGy/O5l7bEn0cywRpujac9wUrOamSS8ii1q7RU9D8RhPdaqDFw
         xGUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769258204; x=1769863004;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aWxFjlQ15iLHcZ2sWOA5/KipFAdTrRSE3rE8bBRoPNA=;
        b=BoPlPrfsmnnyRuYHY1bFUn6MzKKHSlWOT8p+1B0+2i11o4FfoehRlp2ygLKCO5+n+2
         ZxXqecm6qmRkuY9zgWsIfdGhnfTtfvCBX6ermW7EgVY8RUv1pPp2XFrVgjaKsGx8/iFQ
         2H762Vu/ir91+JMM2CqGzsG/8MN5ZRPUA6gjLPNYcHcxvhb4pM8KY/CsP6JB0/unLyAN
         DkLvv7WExCQsJSyzfuVzopK2sLrZnjpsgUXbeo7n410YlakcGKKoJFJmCxtz5wgTeVyi
         YO/OUC9sV826pC4/7MBWUxlitEXS+kkE+7cnEUT8jRpcOJWFZXtl5SEz8ipOC9pQWJ7T
         ZsIQ==
X-Forwarded-Encrypted: i=1; AJvYcCVpAdZzzbuyVaxA3g5AiYSeCPW/3tLwME40Z6bF++puMuJdH0AeY9Q/52pVnpijZPTSZwMen2WK89mZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyneN6eLd5r+EgFUhu5LeGmDXMp6iV8BpRjF0IPhxVcC6uzybTv
	ict6vPuNLOkyESWm5PqHg5s9H4iPVBrz8jaotMp9J2zYTQ8UIY62UdyP
X-Gm-Gg: AZuq6aKevssmb28IC0P7ihJJo6kfHcMdrTi8k8pSaLU0rgGz+emUQRQw9SMra7+BQDm
	xgwWKvG+eUQZBuAQJqNSNAJoVhUJqVQLfo1zoX1L1wzzHNILOXo+zS5YddX7/+AgcGADKTJiIby
	ytpcbV+kDQ9evrRPwed2trkZaPNHSqH4iR+aVD0AvGk1ibZyRWV9ZxvCeRnYwmoSQemosAf72fj
	ogS4maKnmZSnllRrBY38oGlDubyLNhiyLQU2TKrpfQPxbKPoF7gQuZkUxSThordOuJYlB+KFP5F
	eGM8AqOBY2PTUYybNOx4rZugBJSGaxYOPhMoTCXWYb+UtMk9FM0c1akweOx0udkOsMiIfvxVUuf
	wCL3uIofA88YwHWXD4jlOORzdqmB5QzNQQGDtzQL/koue9D/Aw5+x6XtBoIOoDA98pumf8KNM5Y
	eroVJjergEK7OK8fKAiUQ9tof10WKi343gt3IP33XEchyobqh1hlJDy8BlJgOmtBj2
X-Received: by 2002:a05:6000:1847:b0:435:9756:d4c4 with SMTP id ffacd0b85a97d-435b15d6927mr9998528f8f.17.1769258204232;
        Sat, 24 Jan 2026 04:36:44 -0800 (PST)
Received: from localhost (brnt-04-b2-v4wan-170138-cust2432.vm7.cable.virginm.net. [94.175.9.129])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435b1f7c9cesm14772613f8f.41.2026.01.24.04.36.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Jan 2026 04:36:42 -0800 (PST)
Date: Sat, 24 Jan 2026 12:36:42 +0000
From: Stafford Horne <shorne@gmail.com>
To: Gary Lau <zgliu@foxmail.com>
Cc: linusw <linusw@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
	linux-openrisc <linux-openrisc@vger.kernel.org>,
	devicetree <devicetree@vger.kernel.org>, robh <robh@kernel.org>,
	krzk+dt <krzk+dt@kernel.org>, conor+dt <conor+dt@kernel.org>,
	geert+renesas <geert+renesas@glider.be>,
	"krzysztof.kozlowski" <krzysztof.kozlowski@oss.qualcomm.com>,
	brgl <brgl@kernel.org>, linux-gpio <linux-gpio@vger.kernel.org>
Subject: Re: [PATCH v6 1/6] dt-bindings: gpio-mmio: Correct opencores GPIO
Message-ID: <aXS82qiNNvPVMqdV@antec>
References: <tencent_F07E7380CFFB3A6A7480FDA42A636B7D290A@qq.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <tencent_F07E7380CFFB3A6A7480FDA42A636B7D290A@qq.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259176-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[foxmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shorne@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7DD3D7D9B7
X-Rspamd-Action: no action

On Fri, Jan 23, 2026 at 10:18:04PM +0800, Gary Lau wrote:
> Hi Stafford,
> 
> I should clarify my setup: I'm using hardware address translation to make the
> OpenCores 8-bit GPIO appear as 32-bit to the CPU. Specifically:
> 
> 1. Address translation: The CPU's 32-bit addresses are right-shifted by 2 bits
>    (adr_i[2] in Verilog), so each 32-bit CPU access maps to the correct 8-bit
>    OpenCores register.
> 
> 2. Data width adaptation: Only dat_i[7:0] and dat_o[7:0] are connected, so
>    32-bit writes are truncated to 8-bit, and reads are zero-extended.
> 
> This hardware wrapper makes brcm,bcm6345-gpio driver "work" with my OpenCores
> GPIO, but it's really a hardware-level compatibility layer, not true software
> compatibility.
> 
> So you're absolutely right that the native opencores,gpio isn't compatible
> with brcm,bcm6345-gpio. My setup works because of custom hardware translation,
> not because the IP cores are compatible.

Thanks Gary for testing.

-Stafford

