Return-Path: <devicetree+bounces-254538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F147D191B6
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 14:32:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 206C53006E0E
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 13:32:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC79E38FF1F;
	Tue, 13 Jan 2026 13:32:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="c4cvxJbI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="H0p4FW/o"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83F9C2D46C0
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 13:32:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768311158; cv=none; b=jIi82VizuEUIaEcNvFU58i4AlyAevbRiCOD4goKbe7JfYTh/MSE0u6v5NEEqgczYJVW5OVWdAeomg8SHOleFd74vh3mgK+Qy+ZCVSKZZEkn6wr8yvlTFjtfDtBFDFuAddwibjt08PtPeTj+BQ8cHiobsng+c+FC8n3U2mTsAp8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768311158; c=relaxed/simple;
	bh=iaesIPrqbVwJjFyXUeP+5jmVglPcQj+vLOMaszr3DJ8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=XHhFBNHt50RNAFNkW671fdF7j6WrU4O67/nxYbUmAG0TTA/TyoUDpg7stj+AdJXqeS81btow/Cz3twF22z0Z2p7EJ4t+Dz0wx1eJZLZT5qIbuNEQa3jbxEuvaRkIvH+b55LBHeg9iVoSBu705fwgFoBUJffxg9AHoYJ7+5TAX6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=c4cvxJbI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=H0p4FW/o; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60DDKVLg3868692
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 13:32:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	E8TJC1xR5qwjZdXuz/Ki/VwolLGb9COznW5/ec1379Y=; b=c4cvxJbIr267S+mx
	bxPq2sXOacnTkPP+w81iECdR2hCE5raPuh2mmO5lrX6G+xNqXep4ikcTC1WAK48Z
	roLTQ7S31cud5mfDw+nNPy+hgfdT+1rceD46EpMiwf7txhVXixtk4Lesx1t5cMBP
	8f/dEYPw5HgUUV2wtj56gjTA+Bcj7TzDKXH0ZdbwMT0CxROfkxsZlcq+1aEsgHi3
	LaCenOHapmi3MhW6VQpro1OSOySXf6PVC8xJsGqHeNBOovKvKDEAKh/mC9ZRgpNO
	8cVuqU5Pue22bncGpQ/grOy5kER/xZnYnUceiMzUh66hCt/BrxzvvynagUD7U5Z7
	mf39nQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnfxk9dqm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 13:32:36 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34c6e05af3bso8174253a91.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 05:32:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768311155; x=1768915955; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E8TJC1xR5qwjZdXuz/Ki/VwolLGb9COznW5/ec1379Y=;
        b=H0p4FW/ovOv+FSX2qct/AYqOgjza0EoPG/JBemBw01EkHBPhUxS0eiw7Y8f7YhNTYT
         2p4eH9uHdGO4P9YTnPccHsFLweC0m276wToXmvRB4RoBS3bm9NeOUT5mubfd4ApwpgeP
         7dOyBbsTpBt+jf7X2begVu4gh5WUtVNRixyRkojeUsEjZJ3OgaVSYPSGJ/71US2vWT7q
         vgY6oVf+qF6+Sd1f/vMnxR40cMxE8DWG+eOM0uPukuo20SPj67XEbnCEb/x1le1rwRok
         mTGfJ63noX1js0VKbDTx2ImqkkCj+XOnlD5yZjt6zTxAbMkVbigzwwm5/v225jQHdF6o
         ucqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768311155; x=1768915955;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=E8TJC1xR5qwjZdXuz/Ki/VwolLGb9COznW5/ec1379Y=;
        b=hJfFCE7n250ZbZRgeGYdodx61AFKwEl4R+wp7RkKHhQsVCehcxjo1+cSyPT/1TXTsH
         UenKkA0ovyKLlpVqnxW3HWlkkdWeLAuYQeVVGs/85BTBx4awFlvJtJBa91OhkynjOKH+
         C1WaNp1a2jM1HUykYKaNK/g/z+dbM2UleKaXIIvyiqgbo0X5VJ27GVJI+GG8ZVmUWxLH
         gPiMMgSzQ7CsB9nyaknIgqxZTXHBzqD7Sejd8Cvr6GNFHmz5u8vs8PAg8PTzeAOIN+CE
         G8SYIwj7nuCYO1k+LFSLTWTUGzEwgC71y88eczwz20d4dT7PhUCFZZy9oeP1oSveb/LM
         3tYw==
X-Forwarded-Encrypted: i=1; AJvYcCWhNGjYE4vDhNFU4zId4l/YyJH7fOmVHLEDllW6uj+QJ152bBqiGzCrrxMXzh+5wAPU75Un96iGVb+J@vger.kernel.org
X-Gm-Message-State: AOJu0YzpE/WAN4OQJIyB3eThRb5b6PwDCkm1FnoBbyZdGKv3DqgzkyK1
	iChPl4uHJtENEyGeC1PgF0wFAiReBXPw0pHEXPDujTbpOqcHN3XU/Hhh4J8tMqX6iIDZwKRjAvi
	xTZJspp0kGsahGv5b7WH+W03msvNz/kTT7XEiPUyEpW/JQJNLgH+skZ4CR8HITnLA
X-Gm-Gg: AY/fxX5i/QYck4ujPr9FcMfjToOQEes5xmVw0eESYTSy8Ycf1xCT7i+bpD3UGdvi+4r
	gTck8FUXz2qhvhirNVbrAD5MeQ/pJs1GtH4CVH5htESqUtXcSXVFynK6XjcxFaqUjhV4bx29kn5
	vaxVXx6VhXm1Vnq5/U8pQwHCboM6N4ua5591JNJgIae6CeXiJxRqIOOWQb55eyugAnNhzhw4YfY
	y0FlTlMf6zIB1aigtk/E+73+/zLtRvHE56kULd95tR3lg+Inlh770rRLGvlihkYCWOXZ5cuua9n
	ldLhxIV0+CIq7z37MJM78NjnTM8bbO8KEeQmz25IySWV9PIHQndlmF+q1nvGIjwT0AcNEDrRGsw
	lsZpc/tb7
X-Received: by 2002:a17:90b:3a8d:b0:335:2823:3683 with SMTP id 98e67ed59e1d1-34f68b65de0mr18289158a91.9.1768311155365;
        Tue, 13 Jan 2026 05:32:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFQSeTTC0e5zR0aZPRVtYeUvCiFIncOpvm5d1GGOQzzdJx+WVyV1lsQhT267/6cpb7RuZ0E5g==
X-Received: by 2002:a17:90b:3a8d:b0:335:2823:3683 with SMTP id 98e67ed59e1d1-34f68b65de0mr18289130a91.9.1768311154759;
        Tue, 13 Jan 2026 05:32:34 -0800 (PST)
Received: from [192.168.1.102] ([120.60.62.237])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5fa78ebdsm19939128a91.4.2026.01.13.05.32.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 05:32:34 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Google-Original-From: Manivannan Sadhasivam <mani@kernel.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Huacai Chen <chenhuacai@kernel.org>, WANG Xuerui <kernel@xen0n.name>,
        Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Binbin Zhou <zhoubinbin@loongson.cn>, Yao Zi <me@ziyao.cc>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, loongarch@lists.linux.dev
In-Reply-To: <20251209140006.54821-1-me@ziyao.cc>
References: <20251209140006.54821-1-me@ziyao.cc>
Subject: Re: (subset) [PATCH 0/2] Fix LoongArch dtbs_check warnings
Message-Id: <176831115031.476677.605007474581802284.b4-ty@kernel.org>
Date: Tue, 13 Jan 2026 19:02:30 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Proofpoint-ORIG-GUID: JNDmEZnX22hZSHfD4SfP3I1RMBv3TSR3
X-Proofpoint-GUID: JNDmEZnX22hZSHfD4SfP3I1RMBv3TSR3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDExNCBTYWx0ZWRfX6uVcq1YBCYMa
 Iza9QOxhpnQmlJH7zkBX9zEh+eaPN4HD6wA6AkAz+9v/TaiXTiaKTIsT46OPH9uaXCYOsYPL3gY
 IGfmzNt/2b6i+2Y4UYEBJUeu2d7VXMyCRSLPJkwAlKdNDhcqHE9Ki2FBVMt9JE+tVRQFQg3NYaN
 0as+8MV8Cuc66SgJ1t3RzwIL8g5cYT1owwxCb1zl0za5twpCB9/FghA5NemIHR9a3zgRW5R5x8O
 7+XONTuKF4vlBqoBeBHzuc18vlo7FDfiGcAzniXeR2olU2FjkIWjuln2sTFdZcJQoVTlZo86E0Y
 hoA+g6skus1FbJoo8dxr5DcPbV63qQeVD8ehlOpD5HDU9DrObozXDWSmK1eoJxcH7gqcRn7Wu4D
 yQcc2hn99+p6QODeMSQFt6xJwUtPJ7m8yjz5SUa27iV3j1FM1nWsUwApFaQ7zQuzdN8hR28NIE1
 im4UED1HygpHXa66Avw==
X-Authority-Analysis: v=2.4 cv=PvSergM3 c=1 sm=1 tr=0 ts=69664974 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=tlgrONNCw2HA119KiuRAjA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=7KmsL79GNCPbkX_oTsYA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 lowpriorityscore=0
 adultscore=0 spamscore=0 clxscore=1015 impostorscore=0 suspectscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130114


On Tue, 09 Dec 2025 14:00:04 +0000, Yao Zi wrote:
> Running dtbs_check with ARCH=loongarch emits a lot of warnings, most
> about describing sideband interrupts for PCI devices through interrupts
> property, and usage of undocumented msi-parent property in pcie
> controller in loongson-2k2000.dtsi.
> 
> Patch 1 solves the former problem by using interrupts-extended property
> for these devices. I don't have LS2K1000/2000 devices on hand, so
> helping in testing it will be appreciated. msi-parent property is
> documented in the second patch for Loongson PCI controllers.
> 
> [...]

Applied, thanks!

[2/2] dt-bindings: PCI: loongson: Document msi-parent property
      commit: d782e6e7aa798a2c28f30f984ea6dcdb63f51674

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


