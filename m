Return-Path: <devicetree+bounces-238933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FAEC5FFC4
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 05:22:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2F9264E5490
	for <lists+devicetree@lfdr.de>; Sat, 15 Nov 2025 04:22:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A5A62147E5;
	Sat, 15 Nov 2025 04:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="do7DD2R4";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="mDufRdfy"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0E8018D658
	for <devicetree@vger.kernel.org>; Sat, 15 Nov 2025 04:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763180515; cv=none; b=VqPukSPWg5tRIltIq1Fo0n4gaPkiTAcx5lWNp+jT6wntMMjzdycIer2s7pgvFurvZGuSE0I155RG/XGVZRrA/NrsAp7P1RO7r/pCOMmjMg0UWVEEGcgGr7j3g0kiNO/yaGtnQ5UHpRIurzjoTwOMmpHyPGJuc55XRlEn5693aWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763180515; c=relaxed/simple;
	bh=W7Q6wmI9qY9hFy3y3Yc0H0YKLHAJOByL64hTBS8BJ6I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sSCPY1481yxna96gBjcpEtGd9oWQMyaVSsUwguBjZF4KGjyiV0t4rQFK6x5vY/lVBwvHvgwEPWwX/GAiIPEEonOufwT+orEsqOGHdocAvHoPVfKiT2+ankSwI5io0NcHkmW75EEeOn4PG0Nha2iktCFn63ornqv+wtlKrEi4zhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=do7DD2R4; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=mDufRdfy; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1763180512;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=n/tk0v+4BBK6qP0Q9YzuiptrPfp0eR+Hy5aITCdFIu8=;
	b=do7DD2R4DQushHA32Mt+o3G00Tr6Ydysd+0TBbS0AATy2D4VnZy5RP7KqsCO9VRHW+t7yy
	mqz8Sld93pdBT7chFA4NLUXMm+CGBtoXFrcH2rwueP+nR28FLWUiFnKnKozQAcKW3Ti4ir
	V8akrEz9ukjUVPjIK8ubzF25gPHbr/k=
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com
 [209.85.214.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-537-N9qlSlfEPpGJhBlL0wmyTg-1; Fri, 14 Nov 2025 23:21:51 -0500
X-MC-Unique: N9qlSlfEPpGJhBlL0wmyTg-1
X-Mimecast-MFC-AGG-ID: N9qlSlfEPpGJhBlL0wmyTg_1763180510
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-297fbfb4e53so47321395ad.1
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 20:21:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1763180510; x=1763785310; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n/tk0v+4BBK6qP0Q9YzuiptrPfp0eR+Hy5aITCdFIu8=;
        b=mDufRdfyb3+3CvLfM2VfU6skSl10O6kBApZSJZgrHfaXOmnx+j6ezg6w5+vPJngR2l
         y1jQlCRClR7DIZF1C+bzCfjxLYqQ9/Q99I6v1/L/LgpSWYBcxZvoxIE3ulFf5dzuVzat
         yBy+nNyQllDj7+tii4l0FcL8S9+ehpcyeyIrnj3JIGI8sJhSmhU8pBtiGgk4VnNHyX5J
         3cAmeq9Rh2g/8KeuA+BOBJw6qCNh5mhoq6Aw0DwmsT7Zl+9vmOqY6Gpx0/hHpU+8exfh
         nS64j0CEcnrp4jDxlZHxZX4Eme2b6LpbE8NUm7ODxpNDe+Ya0pmL4DCj9f44j171ehLV
         YyRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763180510; x=1763785310;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=n/tk0v+4BBK6qP0Q9YzuiptrPfp0eR+Hy5aITCdFIu8=;
        b=rUlcR33rmke05uzgweTYvqoLFEvHQr3wcodkxu8QJfr35wbInOVOv20krCOtypk37P
         7QF8pFU6rSi6lBgw3V06s3Zp0omPEIbl8oQ/z24ZJ0rk6d1dit4j3XIhYFU8CptDzAY2
         IhtVdeifahc+DtD51vep1wRLbF2Y3stOR1OPIvoa2EfHLikoZ/k1bJrBUfiTuVo1jh2Z
         O7cc53t2jcF/8E2odNSfq3O6+cNm+ZTv2ScLhp5x+DJI6ZWFvxnY+2PMYOifjjjZ5ZtY
         1Xr+go9gXVlRdhIkeQWp8ZRwagkUqH2O4wBRcSkvzVy/fIwgpD6ztLNVsWB9JwYtHYMu
         SYBw==
X-Forwarded-Encrypted: i=1; AJvYcCUdIPilRMBCwIGAytnYZCnyxR8a+T1khfqX1nZztN5Ii13wbxRGgAXQc3GjWWBc3HFnXBVh3loNoGI2@vger.kernel.org
X-Gm-Message-State: AOJu0YzBk8TqFHGiJEDG+Lvulzy2Z1ByKNAnr5EYQhhNLVlki8+15bSo
	3zOICm3YpVoanP8fevgx/2bVLRod+EGhxv7EkMa1KeiTRlHmeZ8mBjtZ4qm+mQ19JtwksN3lGGX
	0NaToDevjuK7NQDck5OvFqehjP+fbOBIj4azPeidysQuO37IMA5KwF6LjLaQJpcMEWId/qhgWiI
	SX4oXGInj6WkBHHLRS600Lu9kmrD0s1fcM7uAGGg==
X-Gm-Gg: ASbGncssSMpcY31I4sGFdnM9FHu5J45KK/xqDu8vINMVV8QLdrchXABhnd7x6wn+3rp
	fkKuowSs94abH/Qcs27CNsOG6OyKKWJaj8SlhQ6EYCq6Y1AYv0AUZIPVPv31jbfYeSUpL99aQVK
	f0LS2Yey9D4yPV3MmULGpsY+RT82OFPwCkogj77ISV1YEKBkdqSl9UrqtW
X-Received: by 2002:a17:903:120b:b0:295:987d:f7ef with SMTP id d9443c01a7336-2986a6b5698mr58952825ad.10.1763180510154;
        Fri, 14 Nov 2025 20:21:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGpWOiKe/yoXVPzbbB8ra3b08yL+JrFximT86RMx9yWBQlaBgFV6FIkea9RBX9X7EoOn4xsE8DGGa3NwoDYNSY=
X-Received: by 2002:a17:903:120b:b0:295:987d:f7ef with SMTP id
 d9443c01a7336-2986a6b5698mr58952445ad.10.1763180509717; Fri, 14 Nov 2025
 20:21:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251113214540.2623070-1-elder@riscstar.com>
In-Reply-To: <20251113214540.2623070-1-elder@riscstar.com>
From: Jason Montleon <jmontleo@redhat.com>
Date: Fri, 14 Nov 2025 23:21:38 -0500
X-Gm-Features: AWmQ_bm8Az7GW4XBfoBLWD-9SdtXqiB6zadKcTvspIsW8QHKFXbXxVXEFbaU15U
Message-ID: <CAJD_bP+AjhNCB6kCeKdnXERjP9j8dhbCejnS1OVmFf_VShti5Q@mail.gmail.com>
Subject: Re: [PATCH v6 0/7] Introduce SpacemiT K1 PCIe phy and host controller
To: Alex Elder <elder@riscstar.com>
Cc: dlan@gentoo.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, bhelgaas@google.com, 
	lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org, 
	ziyao@disroot.org, aurelien@aurel32.net, johannes@erdfelt.com, 
	mayank.rana@oss.qualcomm.com, qiang.yu@oss.qualcomm.com, 
	shradha.t@samsung.com, inochiama@gmail.com, pjw@kernel.org, 
	palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr, 
	p.zabel@pengutronix.de, christian.bruel@foss.st.com, 
	thippeswamy.havalige@amd.com, krishna.chundru@oss.qualcomm.com, 
	guodong@riscstar.com, devicetree@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-phy@lists.infradead.org, spacemit@lists.linux.dev, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 13, 2025 at 4:45=E2=80=AFPM Alex Elder <elder@riscstar.com> wro=
te:
>
> This series introduces a PHY driver and a PCIe driver to support PCIe
> on the SpacemiT K1 SoC.  The PCIe implementation is derived from a
> Synopsys DesignWare PCIe IP.  The PHY driver supports one combination
> PCIe/USB PHY as well as two PCIe-only PHYs.  The combo PHY port uses
> one PCIe lane, and the other two ports each have two lanes.  All PCIe
> ports operate at 5 GT/second.
>
> The PCIe PHYs must be configured using a value that can only be
> determined using the combo PHY, operating in PCIe mode.  To allow
> that PHY to be used for USB, the needed calibration step is performed
> by the PHY driver automatically at probe time.  Once this step is done,
> the PHY can be used for either PCIe or USB.
>
> The driver supports 256 MSIs, and initially does not support PCI INTx
> interrupts.  The hardware does not support MSI-X.
>
> Version 6 of this series addresses a few comments from Christophe
> Jaillet, and improves a workaround that disables ASPM L1.  The two
> people who had reported errors on earlier versions of this code have
> confirmed their NVMe devices now work when configured with the default
> RISC-V kernel configuration.

I successfully tested this patchset on a Banana Pi F3 and also a
Milk-V M1 Jupiter by making the same additions to k1-milkv-jupiter.dts
as were made to k1-bananapi-f3.dts.
I no longer have problems with NVME devices like I did when I tried v3 and =
v4.

Tested-by: Jason Montleon <jmontleo@redhat.com>


