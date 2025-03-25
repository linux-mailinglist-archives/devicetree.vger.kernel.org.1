Return-Path: <devicetree+bounces-160606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E930A7045A
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 15:57:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C164E169EE2
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 14:57:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3240A25A633;
	Tue, 25 Mar 2025 14:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ReNQKVdu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1EA225A350
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 14:57:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742914627; cv=none; b=b4g+tTMqb0rlbB4Vk2lRb3d4imEmdiyfa9t5KdWF0YCwttvn4X6E2r/+aJFRIc2W03rhOZDtQXKVQt3dC1xb/JL2MwCxc6hrSWXSJpjl0q9ceepBXNB9GneYz2HhMrIxigGCShjzmjt4Xq1d3J1ebqDdqafxeRDY4ZuBRy9cSFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742914627; c=relaxed/simple;
	bh=EqMHws/gJIm5pVARMKymR3sSEres33GBEqhPYnNv//c=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=XCGjYwuSEbKLtYfQe+iK0rFW1O6PbOLNGZ/34Ao/ZeriAGdTJYPesYgSZeckGzCA72aXxNA8DSU9q7156b3/iYGZW9/eWlQ+ST3H3p6R3aXtUFY85Tb8F8NJdGsjd+yz5k19vj1PkAupqC6pMvXov4ixSSzeMhqPXw0ynkkCC+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ReNQKVdu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52PDNKvN024710
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 14:57:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sccn61YffIOVf72k4v7cFNWsntpRWvOgplQHMkBT7eM=; b=ReNQKVduuIUpZqLx
	tIM1mdfFCPIkc+uPYpJylxYNUpfvedxkEyeVXODjtpRqqYT9DpIoQmg6zUgfIvDq
	2YJvsoqhnFwtwh8q20wbWKvzdRx02VxSgWBI7z3NPzlXQKwQdXUGkmfAzxz0VdmB
	T/GhVNmu/jeecuDNgskQk3AV4dhdxaH5+zAF6D+h3D/G3NStdljouh+7H4zUEwVr
	5wGOB31/m068MseWzpv8qP/FSEgVHsiTBuzSdClfscomGv6d/l/bR7rncTWIZ8n5
	185LmyxTH8q2bpU2YkxF6cpCr/9fL3R3S3YyyEy7KnJrZ92fJvnHivKLr8Zf3o69
	h+uyWg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45k7qjbx5u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 14:57:04 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-2ff8c5d185aso16788898a91.1
        for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 07:57:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742914623; x=1743519423;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sccn61YffIOVf72k4v7cFNWsntpRWvOgplQHMkBT7eM=;
        b=uivefBobVAqw2Iceg+FsZmocUwBX0DCPCPVRIjTcE3W3HxgizNgb2JQWGWs8ubuB/X
         NJ/jWMVaZc0q1+ELTGnHQBW7/ts6fNzh+KXA3GHJtHm9kR/vG7sdETiBG2RuNer7LGU/
         TG3oiF0PQV9ROBbNULYhtGz2oz8jwLwR6tpUealtUE4GssjYOZ9655TfESg348kuD1pi
         l6ir8M+NgxFQKNkdcmzgMNW2QREpAbtmyFUmHyXRKXAIzmUwDSFQVuiPlmRuRdOIw2Sa
         sDhfZix+28Vlt4AHCaUvu8MLOqdRJUXUjNcb/A+9fKqoWMdz6WmeN5GnQSHAmI76XEIg
         BosQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPY4UafHufGW1PaI7o8Jna3G1+S5CICFNIOywckXCkXH/XBHplJ2HwUQroGWPAOmIUpX1tWo17hM/c@vger.kernel.org
X-Gm-Message-State: AOJu0YwawXmkynZ5m4iyZ3DuTam1C0Gl+2V3CK7tnXzW05TkxeEQpWLL
	tqWod686EFR4aRN3QJkLRzot6Ufh00W4fV7K4+XNJTVy6WT5rupcuSF9dKqGqumz6Ssjo551N1C
	84hepYulQW6OP78km2BK+pvotGztLz9v/T2JoWkE2kwVYIuKnuzwx8QbDiQvI
X-Gm-Gg: ASbGnct9Wf6IqC1jAgbOwp1RLzbOKUO18Rf2+MaVyZZuyQT7AzxFJqnImxTI34Kpg8c
	1k25lCOYrLE3hC2sGvbBHKPwQcVdaxOMgV+CC4PZ9Mkl3CzkjUc7usvMMtUTjjhBbr5y4/s1coa
	GdLYOs020gEQAfWwzuAJovn8L90rYz+NRSO/ovc3mQUWiQKVahgfcO4mZ1grTBRP9oUTmLHEHv3
	M4fW6LtoBs54D0aZpWTRhZe15ZvsTr2zMC/sqYxAYj3jDhn4UNfcHV3YaW2PnHgfvf2BAt8cSG2
	AKxd9d+Ag3NLokvNZUHF2fvjNgwPDw6jxecp+e/TmUzVH+I0Uhmg
X-Received: by 2002:a17:90b:4f8b:b0:2fe:b8b9:5aa6 with SMTP id 98e67ed59e1d1-30310021a17mr25929470a91.31.1742914623306;
        Tue, 25 Mar 2025 07:57:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGuMFcW5Mc6PLB2e9P1WD+ArFqapEY7WYWu/v0VV2vjM3az7z7rxhMWP+snHjYJQ+Oca0tXQA==
X-Received: by 2002:a17:90b:4f8b:b0:2fe:b8b9:5aa6 with SMTP id 98e67ed59e1d1-30310021a17mr25929413a91.31.1742914622771;
        Tue, 25 Mar 2025 07:57:02 -0700 (PDT)
Received: from [169.254.0.1] (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-301bf61a73fsm14496467a91.36.2025.03.25.07.57.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Mar 2025 07:57:02 -0700 (PDT)
From: Jeff Johnson <jeff.johnson@oss.qualcomm.com>
To: Johannes Berg <johannes@sipsolutions.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jeff Johnson <jjohnson@kernel.org>,
        Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>
Cc: linux-wireless@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ath12k@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Balamurugan S <quic_bselvara@quicinc.com>,
        Vasanthakumar Thiagarajan <vasanthakumar.thiagarajan@oss.qualcomm.com>,
        P Praneesh <quic_ppranees@quicinc.com>,
        Sowmiya Sree Elavalagan <quic_ssreeela@quicinc.com>
In-Reply-To: <20250321-ath12k-ahb-v12-0-bb389ed76ae5@quicinc.com>
References: <20250321-ath12k-ahb-v12-0-bb389ed76ae5@quicinc.com>
Subject: Re: [PATCH ath-next v12 00/13] wifi: ath12k: add Ath12k AHB driver
 support for IPQ5332
Message-Id: <174291462168.1228728.13742084811292852249.b4-ty@oss.qualcomm.com>
Date: Tue, 25 Mar 2025 07:57:01 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.0
X-Proofpoint-ORIG-GUID: Hi4AMH-xfGGx3bwpB4nJYPND5u_1f5pa
X-Proofpoint-GUID: Hi4AMH-xfGGx3bwpB4nJYPND5u_1f5pa
X-Authority-Analysis: v=2.4 cv=feOty1QF c=1 sm=1 tr=0 ts=67e2c440 cx=c_pps a=0uOsjrqzRL749jD1oC5vDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=3RKYKuViV1jtgHVlbD4A:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-25_06,2025-03-25_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0 bulkscore=0
 lowpriorityscore=0 malwarescore=0 suspectscore=0 mlxscore=0
 mlxlogscore=918 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503250105


On Fri, 21 Mar 2025 16:22:37 +0530, Raj Kumar Bhagat wrote:
> Currently, Ath12k driver only supports WiFi devices that are based on
> PCI bus. New Ath12k device IPQ5332 is based on AHB bus. Hence, add
> Ath12k AHB support for IPQ5332.
> 
> IPQ5332 is IEEE802.11be 2 GHz 2x2 Wifi device. To bring-up IPQ5332
> device:
> - Add hardware parameters for IPQ5332.
> - CE register address space in IPQ5332 is separate from WCSS register
>   space. Hence, add logic to remap CE register address.
> - Add support for fixed QMI firmware memory for IPQ5332.
> - Support userPD handling for WCSS secure PIL driver to enable ath12k
>   AHB support.
> 
> [...]

Applied, thanks!

[01/13] dt-bindings: net: wireless: describe the ath12k AHB module for IPQ5332
        commit: 94fcd39ca255758335ace05f70365f2126190ee0
[02/13] wifi: ath12k: fix incorrect CE addresses
        commit: 60031d9c3589c7983fd1deb4a4c0bebf0929890e
[03/13] wifi: ath12k: refactor ath12k_hw_regs structure
        commit: 5257324583e32fd5bd6bbb6c82b4f5880b842f99
[04/13] wifi: ath12k: add ath12k_hw_params for IPQ5332
        commit: 5fa2fab69f59da8eaf9cbb53fd89727c750b14cf
[05/13] wifi: ath12k: avoid m3 firmware download in AHB device IPQ5332
        commit: 11794f8540043c230ec4bf57ee1227e765ab52ab
[06/13] wifi: ath12k: Add hw_params to remap CE register space for IPQ5332
        commit: 12070392be0b39d5305a235401d3ff9f03fdba13
[07/13] wifi: ath12k: add support for fixed QMI firmware memory
        commit: 6757079c5890f7168a9bc111b2345209f05ae278
[08/13] wifi: ath12k: add AHB driver support for IPQ5332
        commit: 6cee30f0da751284662affaa0d7fc567cdd65f48
[09/13] wifi: ath12k: Power up root PD
        commit: 10a355ba6238e13d196be2f226a59f7886d7b5bd
[10/13] wifi: ath12k: Register various userPD interrupts and save SMEM entries
        commit: f73e089745a000b6eb99457f71b47dc862ab221a
[11/13] wifi: ath12k: Power up userPD
        commit: c01d5cc9b9fe2673885db738ec8d2e01de169b92
[12/13] wifi: ath12k: Power down userPD
        commit: 881edc164071c2da3504b72fdc08ca8f1b915fdb
[13/13] wifi: ath12k: enable ath12k AHB support
        commit: c0dd3f4f70918cbcdd8da611811036a91b7dce33

Best regards,
-- 
Jeff Johnson <jeff.johnson@oss.qualcomm.com>


