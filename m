Return-Path: <devicetree+bounces-220441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FBE9B9645F
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 16:33:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E4BC33ADABA
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 14:29:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF686257AC6;
	Tue, 23 Sep 2025 14:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ieP1rUai"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06B0B21FF46
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 14:22:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758637352; cv=none; b=AnLx+mdQcCe8/Y32YoPgM7EbXMSIIysn0/FYS0Zy+l5I1hzSTXlbrPR1FW2L9xR/LNZCFkkE3qX9/g299iyp3Nt3D1JpX6tDxmn0mFUPm+G80lxdHZyfxRzyAqPd8+g9HFpR6ufduSeYjJXDViuMby9/4YTCsVRO2r5b8C6gTGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758637352; c=relaxed/simple;
	bh=jxex2Vy8xhpU4HlbEMJEgN+VUIJscyKji7VvhhBioyw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=T8qLrXoY4vrTZtRcuVMo9ZwaInRupx3q3YlYJcGNadUZZtXWbT9DfdjsjfRTNyUTN8X0HjXx7o85k7yn5+8Q50GqYhKe22YyRtjZORIe4xoZlwWPBn9gTGADzgyr2jmA1U32prg06MifZWOASqatXJ2BMJ3BxJrxK8p62k1fvA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ieP1rUai; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3ecde0be34eso3405238f8f.1
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 07:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758637349; x=1759242149; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jxex2Vy8xhpU4HlbEMJEgN+VUIJscyKji7VvhhBioyw=;
        b=ieP1rUaiX7+hB5KNhsbem9pHhGx7kV0jCpeUea6d7aysjErYzPmoA0KMz8iM4SqFQx
         qoMMsuboVl/G4DlBv1xWX5NWM6r++qAxJYao2xth8lfRmZby90vlHapCHC6XbmhNS2Ys
         CbMldAsX/sRRXk/M7NXdm4oWbfKuOqbtwnmeWFklHPGZ7/DO5zXSMtjrD2vSNgMaasod
         D2vAzwCBixULa5/yekSdpDoeiCYLqoRDb0Oi0pxQbGw/6TTYnd6gIVHWHnl2yeWjMHeO
         s5SVzkoR1wgzv2NrTZe/K8bBAYTpqkPtIhsomv1R2HKSIOnji5qh1abGI2fYF/var9yT
         OWPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758637349; x=1759242149;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jxex2Vy8xhpU4HlbEMJEgN+VUIJscyKji7VvhhBioyw=;
        b=L0NchVH8TUovHY1cssFDk8gJTokgAz6+rT8IcQ1SYR1POG7UTnviPqYeMuK0aqqXSA
         qa8TfbuXXSqu92orkS9pmFSbENdjtGZm18+z8pxI49sGQcot/mNLFYScCUssnqLyhcdK
         JN9rKBqVEMl7f/c8X4mGgUi1CbXkntzTUR+LFFBclRDpOjV5Tg5AYJ7+PxuTLnf2MthQ
         AIfcu620um8OpTqCaqbSfJrugDteYjuCJ6m70hMmCPvUjinJy7+kWyFN2FVDiugVm82M
         29el7b7PzpAEH1tOaoOtonEAtZRfXq9LkcD+Dt94/+c4NKYtJ3DnNes0KFSHquDKY58z
         USnA==
X-Forwarded-Encrypted: i=1; AJvYcCW9JHxuLPWELeTLTdm0GE48GqMS4Fv+rK5xCj2LhnuHyONrx6SGUUs/exKcVb5rYZd0w7MreYYxeEeX@vger.kernel.org
X-Gm-Message-State: AOJu0YygF5ymy3/T5v97MWdzFRi9K3LZPT3iPdK3uljGsxqQzuUDjJqC
	ISPIEvpPzB2gXsxGuK7gSRIokTAU8FVhg6UyaB/87CFI/a78YkFzr3je
X-Gm-Gg: ASbGncsYq0e8RcmyD7WGEoo0w3/GYit2zS7bDpZ1Yl+l0Us4Dlt1uM5xC0BuziiLi9R
	UWma2KUn0Y14l2XzjPgtHlOM9uZv9uoV1d54lTrem+SQ6f/rw3RxU/O/xAnMuvZL2U/cZMGciME
	2XDYu+dtUQkQq3C0aauf0heX9+COofa3Q3ee/roUbJfAIIcchW0oC4qnbVgQ0zFGKQhRfsilTzF
	4hg3LXWBUG+1jVbcet0SsPvcJ/99Rv6nxYgcn5SPRSyOgsM6BzvBXrekj/kbgaqBBmskMJ+v42t
	oUrl11FwONLL7YT/Vqi9FAiywUROAw8D4P8r5MCkZo5wwTMYjkQwIXEwtlFuKhajeqsETFK/gHL
	IxfGQLthf57BZ3aoPfUeauNIc1hfnF0kFPu1v74nAvP1Ud+mXn6KUc3kTTmhtqnTKP87JLoF4z8
	Dor9J1
X-Google-Smtp-Source: AGHT+IGjet5wQJA7x9sBQkHVST1A9uu//deoXDFw+WZ7o8/Afi/1TjeFJpy7+SiHbPkDBXjldSD9Ag==
X-Received: by 2002:a05:6000:290a:b0:3e8:f67:894f with SMTP id ffacd0b85a97d-405d299fc65mr2558272f8f.26.1758637349101;
        Tue, 23 Sep 2025 07:22:29 -0700 (PDT)
Received: from jernej-laptop.localnet (178-79-73-218.dynamic.telemach.net. [178.79.73.218])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ee074121b2sm24139332f8f.27.2025.09.23.07.22.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 07:22:28 -0700 (PDT)
From: Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej@kernel.org>, Samuel Holland <samuel@sholland.org>,
 Chen-Yu Tsai <wens@kernel.org>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, Andre Przywara <andre.przywara@arm.com>
Subject:
 Re: [PATCH net-next v7 2/6] net: stmmac: Add support for Allwinner A523
 GMAC200
Date: Tue, 23 Sep 2025 16:22:26 +0200
Message-ID: <2797545.mvXUDI8C0e@jernej-laptop>
In-Reply-To: <20250923140247.2622602-3-wens@kernel.org>
References:
 <20250923140247.2622602-1-wens@kernel.org>
 <20250923140247.2622602-3-wens@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

Dne torek, 23. september 2025 ob 16:02:42 Srednjeevropski poletni =C4=8Das =
je Chen-Yu Tsai napisal(a):
> From: Chen-Yu Tsai <wens@csie.org>
>=20
> The Allwinner A523 SoC family has a second Ethernet controller, called
> the GMAC200 in the BSP and T527 datasheet, and referred to as GMAC1 for
> numbering. This controller, according to BSP sources, is fully
> compatible with a slightly newer version of the Synopsys DWMAC core.
> The glue layer around the controller is the same as found around older
> DWMAC cores on Allwinner SoCs. The only slight difference is that since
> this is the second controller on the SoC, the register for the clock
> delay controls is at a different offset. Last, the integration includes
> a dedicated clock gate for the memory bus and the whole thing is put in
> a separately controllable power domain.
>=20
> Add a new driver for this hardware supporting the integration layer.
>=20
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



