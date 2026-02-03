Return-Path: <devicetree+bounces-262212-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OJkTDF7egWkXLgMAu9opvQ
	(envelope-from <devicetree+bounces-262212-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 12:39:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A96D87EE
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 12:39:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B16033002F74
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 11:39:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30F6D31812F;
	Tue,  3 Feb 2026 11:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UdUfvfyA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f42.google.com (mail-dl1-f42.google.com [74.125.82.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2CC92F1FFC
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 11:39:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.82.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770118743; cv=pass; b=Gm4E0+3dxReubbJcjAyNhV7f4AIeGo0mIy5TpPMPIcNe0H6lb94IzUdJsRihTWY0nIJnjepHEhYTBE5e3p/7Utq5G3LxPrk+uZU81TZJFSHaJxLc7cRyBXTgQpwco7Nl7Fm2qfTCmm4DgwPfwsBBuiF9Ep0hICI4esqZ/XVQA8A=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770118743; c=relaxed/simple;
	bh=ZSFEUNpKLwpxZ1tSep7zK984BWz6j4OqWs1gmb3de4s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DM0ueZKqiiy3oJZhmLqDSyt7b1fTipCCz8TrZlC75hUfguFtZAAdP7ncyUP/AtHn/77KAH8iFAfmlcIv6hLOIUJ1jj6CoOqqwSh7/vXWwsFPhbuODhV6nAF55mOE8zOHy1X7gT9pzaCLCmvIoITuCnwhCeUO3QsftI5/1RWNVO0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UdUfvfyA; arc=pass smtp.client-ip=74.125.82.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f42.google.com with SMTP id a92af1059eb24-12460a7caa2so8343197c88.1
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 03:39:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770118741; cv=none;
        d=google.com; s=arc-20240605;
        b=gbCOCpmlKfAoLrEwsfJvPdlj+a1cQlTRiShqwujiglNgQvQYTqiQfA3h6K9xQG0PRQ
         Ctaw6MfFY0JsT9M7uvnFbf8XsJEJB7Rc2qMa/CzMlHSNvkz3a9qKg4Vyps2wgLnkjUpc
         rLpNZJm59VHkNguT4xZk+E/9Q4CZH+ej+LCAu60EvLiE+XLNDpwlK/idG90lv9vVec5a
         rRgmdfhRW1r3ninAJw0UZqS8uy1ODLjf/dYaMJcMZYQyF+tphcdcrXdkf9jrm6e0rfsw
         rm6VLgUvAD9LgBEPDsvVUuyJJg3DAihR1eGAbIxiFqol5v+iJcPpb4rPREM8jlyNfKmf
         ctvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ZSFEUNpKLwpxZ1tSep7zK984BWz6j4OqWs1gmb3de4s=;
        fh=wB8ItgIKh7QUaGc9vBA2+XOEx5WR0SxUoD5NthWMWhg=;
        b=NKGrsOYpBuj+tWst0xKk/qiZ1f7TIeZ4wJHMHxYLacNkwNWjfIYTasG65Q5iN6KiNZ
         2hlKpCwGR0+t78DesmopZL/rk+wfY9HB60BIPoYKqE5jv7rmW948VZ0TkympsDGaJBYZ
         Hu9ax04OJDOLoLBlV+q/BMqWVqnW074EUvT0MUgJKS8n+a0AL5kXYXBauwVCbF+hPNZR
         O7b3R7ofG+yWFmI0h3B1qiF5Gp73/T0WPbF318tMprtDUtw6Kihmz4wn5NOD8Kby6I9K
         94akzNTnvV4TBZnnSh1JFvbcW2vMhQiJSgR/wp3cLxCzf04EINJf04j8MvfK/C+CLiqh
         gV/A==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770118741; x=1770723541; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZSFEUNpKLwpxZ1tSep7zK984BWz6j4OqWs1gmb3de4s=;
        b=UdUfvfyAb2FM2bCUqE/AqayScDt2RppPIagAWMOb+iI0V1O5ImVXxTp9mdVPLffRFw
         qO0YYONiZlwqWV0qPxWsOHZmZW3gTr6Q8v+RWPY81eg2jhFFzICGi2VZe0Q31f4K+rk1
         q8II2lmJA9iVnhPIXFX+fu2VUmwdANNnIoamoktVMkPj+uEms3YSnIjdZ36z4NU1c/09
         Tc/Tjt1QpBdA965nw8dZqUnsI08r7vE0fzyvIJe8jWkLl6rXF5pCzgl2Z9l8mAU77De8
         fQAsTDTsbWbzlg4en7tocXR3AEU3v8b8YBdLqLvGELgxTTs3eJEJGg9P1lEDcMx7RMar
         yZaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770118741; x=1770723541;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZSFEUNpKLwpxZ1tSep7zK984BWz6j4OqWs1gmb3de4s=;
        b=nkPBIDRSjUDqFXnqlO5kCrVO8R+6sMIgxzYIkwcxbFMLJy4mapBU5nblb3zxGI69hc
         7MDhF7Dla4BvVFhtTCLW8LDZmcypG8TxJu2IliUHbIx/1nChnT4BL6K52NL6u04x0T1Z
         PC3ssvumDBhb/C3cS7ggTIlhAZ12C48usdVYpKgAigXdQqVETPPuNspBcDTVbFgK1ILD
         yZVH/RntDcHtWbUQEXG7UEVt29CfqO9/yKhv4+ynJxpWYT82NUYet5EKzAOT6uTseJRq
         f16S5cTqT8UH/685pxwgCzB53wfHQbc3POJP8qc0EIo1WbYMGHkgJ0iWeHl3iVXg13Ah
         epFQ==
X-Forwarded-Encrypted: i=1; AJvYcCVfbD2o2CQVHr9wpOZDZ9oqKLeULcI0gMp9EXnIV0ptRniNFuwroTCEgb0u2nWN35uvwWay1KhwwrJt@vger.kernel.org
X-Gm-Message-State: AOJu0YwTuLcXSHpIIGp2RqwJvSP2nKTtfPN2OKdSxXwyH3ayj2qHPLPt
	LAicG6x9EuiP9BhMNS5Aj9ReIl8y98R7UsQZKUn4I7P8i8YXBGTLP1y+vbAOfNOJSjlIwvfqFdD
	QLaT3cOBkYnSfharY7nGxU/BS4kmjK+g=
X-Gm-Gg: AZuq6aKdnGI2dtsyrhitzWqXwBZ5UbT98fMBLjDBXeWIm09/kNJAwaIiS3B7VyEzYei
	w/VgtnGwkQO7F/h7TNUdryDqMo7Dae9SNlMb+GcYa8Xnv1iAYZ9oKkaBWur1jLOK0B5YB4suQl7
	PsxS6lj/iMPs9clCfLbI1mgCdV5PxnSkT2DmrXEEa0Azk2GO5hWfAn7Eu5DtrFd5wbeHPiZPSbx
	NjKwS50xgubmP0qDtCSYf1k6v+ast0RrW9R41YVx0ix+9A1EuPuk3ise6EppaNp3Yyafs/kc7G3
	N6S8w25fCREQZLzcFk2P+LGufe2hj6FIaqjnl/vLjaA19VeZ6zIbB8213mEM7nsNTeFBgZ1aFs/
	m5+y1XVUO1/WS10UWCCLe
X-Received: by 2002:a05:7022:248f:b0:119:e569:f611 with SMTP id
 a92af1059eb24-125c0f8c372mr5953978c88.10.1770118740841; Tue, 03 Feb 2026
 03:39:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203100332.915-1-laurentiumihalcea111@gmail.com> <20260203100332.915-2-laurentiumihalcea111@gmail.com>
In-Reply-To: <20260203100332.915-2-laurentiumihalcea111@gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 3 Feb 2026 13:41:42 +0200
X-Gm-Features: AZwV_QhBOKTPtjPqk1VVfZoLbXmghqFVzoBkIlS-QuEoUHDWcA62f6VGa7sfNWE
Message-ID: <CAEnQRZBXQTOp-suG=ppatfyGzUQdeKkV0ZsOYjih=yVjjhTuYg@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] arm64: dts: imx95: add AONMIX MQS node
To: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Shengjiu Wang <shengjiu.wang@nxp.com>, Chancel Liu <chancel.liu@nxp.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	imx@lists.linux.dev, Pengutronix Kernel Team <kernel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262212-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[danielbaluta@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,mail.gmail.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 43A96D87EE
X-Rspamd-Action: no action

On Tue, Feb 3, 2026 at 12:05=E2=80=AFPM Laurentiu Mihalcea
<laurentiumihalcea111@gmail.com> wrote:
>
> From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
>
> Add DT node for AONMIX MQS (i.e. MQS1).
>
> Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
Reviewed-by: Daniel Baluta <daniel.baluta@nxp.com>

