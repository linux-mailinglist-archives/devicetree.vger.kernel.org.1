Return-Path: <devicetree+bounces-258356-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +AdnFt0VcmksawAAu9opvQ
	(envelope-from <devicetree+bounces-258356-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 13:19:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D0966880
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 13:19:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 878A272B146
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 11:44:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA302428487;
	Thu, 22 Jan 2026 11:42:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dRKl3+Pr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f173.google.com (mail-dy1-f173.google.com [74.125.82.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178983BF30A
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 11:42:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.173
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769082178; cv=pass; b=X0AJoplaVcXLozhun+2aGCw3jd5Thy/EhDBN+lWoqIZxAV2n5vvDA2i6PnalIHLyebe5V34FbUTyPh0NsQAGgPos49jlv2E/SpdlkY9MUGqvvZrFKp1o5EBrSF/tcJsSqr+KbcbdPtS57IhWKJ2iN9yMtAcrV/tE+WyTMmDsbSY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769082178; c=relaxed/simple;
	bh=F8Yc9cXJy+2eoQ7TPFhwVWvrGAhXxpTI6YyYLtkj6vw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gK+hOdd2AubYykEWrhPkWAsRXOxEBLcENs4T2kiTo5g1rCfBX/6qSpdt0CjdIjFJgjrerkT2C32yB7uBPSlPI6EbIu4GDeN5hB6VAwVs549nj0CDEAL23U4Mb1lEMXl8Tm42RLP+UgorFdOvgut093tpfZwsu4TVkvbMMX+q01Y=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dRKl3+Pr; arc=pass smtp.client-ip=74.125.82.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f173.google.com with SMTP id 5a478bee46e88-2b72e49776eso465254eec.1
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 03:42:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769082176; cv=none;
        d=google.com; s=arc-20240605;
        b=B8HCrTFwVhJ+F4FKCAc0GkeMEODlLLrWTeKjloxpAg5gibg0iGs8vO/n44cXAniEVJ
         j6i/dg7bSiYjj4PWkNOsI4an+44j7Z7tAyF5wwyqXHZL33G9z1tvcIhNUbPUiie+I8rZ
         zIZoaTcT2yjsYNWG+gGuresarvI5yAjvKk+WO6DXNHG2MOw6WmkOa8E8Fg0ZOyk3IM2x
         j+IPydIlB82uIdh01JD02E0dP6vpQ/FbHaXKRIiFHfkrzxYeli+S30OILMPQlbTmILds
         0Wl8JzPgvUaCRCQ8kAiFLPHsVF//PIxx8Z0vxlxebnbR/8NyNjzwcxQSrGp3TbgGjk9p
         9kIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=HE/sohNG8mICW2nj1/0OeJe/N3MzO12zyrycF9gVJ5s=;
        fh=eaenkslZxYvj05z9M67fHq0VZlw8SyLYt70oBP+fVVc=;
        b=BEcjo2bE4gyXIbe7Sh4VLqj8SBWS2O0mAWgTqEDK07Sh1h/dABGfKBJOMEofNv88OV
         nDUFm2OKzX88ONzhDQCC3ghbCVhHqjS52iC5B9FUQU+prUDlVSeOQNtqiRTr9dUIvJUw
         8vXKa3N71Mf0xHXZ+zt2JnAYUl71hoQEp8dOBhHopU16nB29kLc/uIjopG6adNQhV5Cb
         yXs1Sav7Yqgk0YjvqhOn527YNSDuii2TbdJPS9arUbEa+jXJ4O9YZz2TObDkZ1YbM7Hj
         YejPeGq/bxy+RbFqh1O7Im3jWj70oefIsKZHh95KfGmG5RAQhuLXF+gIe1USLzTIpK88
         Pqng==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769082176; x=1769686976; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HE/sohNG8mICW2nj1/0OeJe/N3MzO12zyrycF9gVJ5s=;
        b=dRKl3+PrFRsUkEla7QbEOv8VjtEX5B2S8UmxykIR+St9sW9mIVmn374Q7v0QzCJHtt
         cRpgFDM+1eHwoLplWkajzCd73HCoaaRZmdDIRQO2H0Q41/t2k/J29SoTw/v37b1nETZM
         875mtEtWwcC62/NMQU1tOgBlvAyNkJ9q91fCC8EVnee8eyhVfVZqOImCtxfDM3d9wyS1
         CqIXxk7Zmc3tNEf/b9xrSLdlDC2QsMakyLpJNtbaaGhaVTC9qbYVV9oJuVR2iJNpYBlZ
         QGUONbMsWbFu64xHLWEb7KXx1JXTif6Wx7Hv9C0MNV6HH2+ox9N4ab1n3X8xcT/OmjVY
         3o3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769082176; x=1769686976;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HE/sohNG8mICW2nj1/0OeJe/N3MzO12zyrycF9gVJ5s=;
        b=UjQLbB8xEqeBuX828feDpjrTZENIjH6rqNqu7CmZJKW8hy2ZfQ0rO0THX4qGIWBeaY
         HdwvhE9x3DqXvn+xl2yQXUBnLOozXOMXyA4WzrArgrA38Z8q888QmD2tLCnf790xxbT1
         QkiGolB0Bng57J42QmlgQ2ivhz3KLfI5DcTcsvyP9thNM+4/sSovfuT/cI6bgkhoKLKT
         3DujRkQgGnjg6dHKszWNuO1gDL1p8SaAzPAad2Gwg03gbQeLFIZ2am2VQNh8EUT15Pkw
         UR4b3Czo9n6SqBmpVxB2B75S4meJtfNKe6F+0FnYQgM8Y5xruNR6Jyb9l5o07HsEvUjU
         DZ+g==
X-Forwarded-Encrypted: i=1; AJvYcCWcxEWjJ69IMY1QCW+Sp2uI8SLbSn/ULWu/OcIwMWKTn3iMZ2Mc2Q+HYPfv5dI0EZN3DiFX9dexz55W@vger.kernel.org
X-Gm-Message-State: AOJu0Yym+WU4hMJyMoEdRhlb5THv/wVBoF5EjjexGFPXumS3o9r1xmqO
	dzz7oqNNjcMspBbUmC3Tn/LRksK+hLvMh2JNU8Oj31EMPOvpzfyD5Ogw0ETJk6sT0uHCuv+viiC
	1WKCNNO2nwHu+Ewzgk4y5E00VzLiOCQQ=
X-Gm-Gg: AZuq6aJoZENWDFulhTAWya3/Cdh+odW2EfHmXTwp6/3cQARCS8JIDEWj1ftdTgPxDUp
	r1fSBrl+mtJG6C2+W5YhOcVmQd8To0QeAruXdGVRDvAf5TZq2fVT99BbfB0zoArm6IHE7/hjF0f
	YEPc9BBdkE859x/giBFsEt7zcjZk2HgSSTgskPTliSXn5brV45hf6BWbGfZ+uTEHMczmVrDh/yz
	ddECAzeuKBNzzyGZHiA6aqW6IYSshNtBzOtMla7zVChbKupJcTqgEEeoCGRr2x2wqR62xrX
X-Received: by 2002:a05:7300:188a:b0:2b7:1d5d:47dc with SMTP id
 5a478bee46e88-2b71d5d49cfmr2705056eec.22.1769082176019; Thu, 22 Jan 2026
 03:42:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260107144507.46491-1-Ashish.Yadav@infineon.com>
 <03da3b10-dfe9-466a-9dc9-b51e29938e3e@roeck-us.net> <CAJKbuCYcRMrX5H5rWXWXOz4FCZi5iu8CCE2Oi3WEsWqEikqsYg@mail.gmail.com>
 <f0d230be-676b-47b9-9565-22319b8e62cc@roeck-us.net>
In-Reply-To: <f0d230be-676b-47b9-9565-22319b8e62cc@roeck-us.net>
From: ashish yadav <ashishyadav78@gmail.com>
Date: Thu, 22 Jan 2026 17:12:44 +0530
X-Gm-Features: AZwV_Qg5AVdgqRe_8IaQnW6DxlahFcEHezmvgXFNpYdUF-cPzZtqukJhMahbLU8
Message-ID: <CAJKbuCYUCr-R-91Ou1y6XDEPdqabSDvCxUypc-YmW=-EPxgNyQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] hwmon:(pmbus/tda38740a) TDA38740A Voltage
 Regulator Driver
To: Guenter Roeck <linux@roeck-us.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-hwmon@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	ASHISH YADAV <Ashish.Yadav@infineon.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258356-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ashishyadav78@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[roeck-us.net:email,ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: D2D0966880
X-Rspamd-Action: no action

Hi Guenter,

Please find my response inline.

Thanks & Regards
   Ashish Yadav

On Tue, Jan 13, 2026 at 8:40=E2=80=AFPM Guenter Roeck <linux@roeck-us.net> =
wrote:
>
> On 1/12/26 23:24, ashish yadav wrote:
>
> >> The need for this, especially why it would only be needed for PMBUS_RE=
AD_VOUT
> >> but not for any other VOUT related commands, is still insufficiently e=
xplained
> >> (and I failed to understand the rationale provided earlier).
> >>
> >
> > It is specifically needed for READ_VOUT as it is being used by
> > external controller to monitor the rail health.
> > Other Vout related parameters are used internally in the IC to for
> > output voltage related protections and does not impact any external
> > decision making.
> >
>
> Sorry, that doesn't really make sense. How would the chip know to match
> VOUT with its VOUT limits if both don't use the same scale ?
>
The chip telemetry would still show Vout as 0.7V as it does not know
about the external feedback resistors.
Hence, no need to scale internal Vout related parameters.
This scale is only for external vendor use to tweak their telemetry
output voltage reading.

> Guenter
>

