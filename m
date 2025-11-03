Return-Path: <devicetree+bounces-234321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 14840C2B4CB
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 12:24:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B513F34959C
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 11:24:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4431D303A10;
	Mon,  3 Nov 2025 11:23:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CVMZLVX5";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YgpS6V4W"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B75283016E5
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 11:23:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762169021; cv=none; b=fdOhUNUOkMyI6ytxWFQNwyRL63HhlAMCAg2yqZnTVRKBOwfZGlwe5vKHJ7124euZ4Iwy8h7AUThtFpMFEC0CSRwO8/JYCtVfvyLycIQNVQLzf8KScPkD/j2y/fz6wq4fmLMLXIyLkzktbPU4Fu+KaJ1vRxde+6VmOk9sH5Whfik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762169021; c=relaxed/simple;
	bh=TbmiBoxPKzcW1UxoRCY4IynThedTQweoi5SHvSXhxgI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=aRfAa8SiwGxk32zo4BIhDR+cf55i9mRVhxXDETmZ+f7BKfbiDP8ybrO/LsTAppNT+3hXE1IUqPPIhctmkWHzxfyNFRp2W6YfFpDcF/jea1uV5cnh9Oj7eUgEwGXCnQ1AQe/iyyzj1vFtpnBVl/YevdivB+0sDcTwbpiOF785NQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CVMZLVX5; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YgpS6V4W; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A38oFqm1245961
	for <devicetree@vger.kernel.org>; Mon, 3 Nov 2025 11:23:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=ppW2WMHBesMAmVu4KwZN4x
	LFSJACIJINMPYXiWQWYCs=; b=CVMZLVX5Ihg2Ck6++lksm/RU+YHuwdZWfv3E3H
	QfP720w7g5iTZUllPArzpQE0lDepNI997lP71uO/VVVzf3F0+LuqROIWEkf72Yjk
	weykfm3Fe8r8L33TedUCyhc39QAxjyaau/iLrgMpTZr9vx6BpdfJIzThgdx2gqNk
	kty6pHLtQSV94ZlKMGtOWbs141V7ECORPAEIEKdmcF3/GDTSn+oDVhIFUJrEjoTt
	LxDA/jgiiik2K0pPDRvJVTTKGcSNjUenRN5FI5xy/nEzqilHP0BJrrtjGAtq5iKK
	r/SqXXG1rZjJC8PrDpyHBjSrkIhVVrryAiNrfbT9m8A9ie7w==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a5ak8mesa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 11:23:38 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b969f3f5bb1so4168286a12.0
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 03:23:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762169018; x=1762773818; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ppW2WMHBesMAmVu4KwZN4xLFSJACIJINMPYXiWQWYCs=;
        b=YgpS6V4W7t69vkuPeoi3GW9XaUmBZcalijeXUnaMuTsNp2i54zgEM6pI1mCxGGNBLW
         7x6j0q3jeIuUHcNCT0UrYCqoagM7l33iidnVQkpmH1vPsHahpzW5KyUUkY3GHxVRXU17
         pUrJtR8fbHfd87h+FV3VaN8Mqfu5oSa7GgyPF7HLsUk6rExyX6DksiK0mr3PvyksAG/0
         tsQxqiTC4EdJqAKaCmHQiZr1YIezUW2ov8fo5bSgzLupMFHAzA7hEAEAbEyo5dghf1qf
         BzamBfqov5imRXI4SjPTmLjzY6Ohmr0JG0k0jH/YbWXJxu542rIkxX+CZIW9U85o5Haz
         0fJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762169018; x=1762773818;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ppW2WMHBesMAmVu4KwZN4xLFSJACIJINMPYXiWQWYCs=;
        b=qfcw5t6PZtcHejiJpKhoIcYfZ/W+ELWMTumSTxUVJ6wS4XPWj7mwR07lNwiYBYs9sJ
         GaTrhr2IwOBraHYqACNPhpVh8TX2y8ZySuOYkTVEsoZmcX1Tbb3dqvgtw0mWO3dSyEDh
         uvWlk1FPPPg8dNr1paPwBpl8JM+3MpdoPNdp5tmoyTq7DCo7s7W2E9KbQtA6BRyHRk/t
         orxxFAJ01ysiU/wCXQnic3FKTVYNPmJxndFbgKMmQd8xwYS5jGi+sn3W8bzpvecLe1+1
         5SR9fglhLe65p+YiYlO9hTYxNLvmY4QkECkg6OgLsK5OqNaKKHpEo541OXDU0+9v6/lz
         OGVg==
X-Forwarded-Encrypted: i=1; AJvYcCUv8sYRRiLJ4s6eUUVP/4QlGl3mHJjPeAeKOsoW0Y/G8YTIy3Vtd5uEJZBib5mDcqdovNgpjJSM9lIF@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7bRNBIe1pp27E0OIM/0b9FTj74154yb1zofPrKjyyTXhhnogT
	IEo432h477mzKlud5kdlVCTwhoVlIw63MNBeNI0uKMPlH1oTv60ZohQn+01Mr8bCKIg1DKOjgK4
	U4xp7WCIfThwwO3f7NgVaQ53zUs6+qVOSrKcmbR1SU12WeWfjqvv/Qo+JcA3QT+Px
X-Gm-Gg: ASbGnctTc0TIvlD998uFwXfsY+wvrVizptOsi7HqHjIYHOwpVIMf3ILu4K+yVlMwNgq
	dRD2y2zgyalva6i1/IibIHHKyq++VMsFk6MaypSxCZTJ3SypKl5qQlSH0v+zO8Lvx04I0SeE6Pn
	LsN+I797kqViLzMCuH5Fm2IJxFVhtMXGTBzCY9jRyOmFSULDvG0DrsYh2LCHuQ5qWkLtq7EX0Bg
	ykMjK3rW2VxtbMrFpNjz6Gmo3kZLxON6DuZPnGtXQP9pEY9+htEs43jZtkbIv07q5tIFF+R9UKC
	447DjXbyNsJ1mbj0rnssEMeUMrgUj+88kCSohihJ1kUrG1IOPz+Lab6u665cDjiExNkWNLaDtM7
	PpsGE0yz1/KpH8CJKIMss0tw60cI=
X-Received: by 2002:a05:6a20:a10f:b0:33d:5e7b:2f2b with SMTP id adf61e73a8af0-348cc8e374bmr17011582637.44.1762169017809;
        Mon, 03 Nov 2025 03:23:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFuePqrEzLevhZsip1JibT/swFsuuGyDcZb61TK+iUH/KiTXJB7lTE7DRWdTJPg1bvGD398MQ==
X-Received: by 2002:a05:6a20:a10f:b0:33d:5e7b:2f2b with SMTP id adf61e73a8af0-348cc8e374bmr17011554637.44.1762169017345;
        Mon, 03 Nov 2025 03:23:37 -0800 (PST)
Received: from hu-kbajaj-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b93bf078924sm9838762a12.32.2025.11.03.03.23.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 03:23:36 -0800 (PST)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Subject: [PATCH 0/2] Add Qualcomm QCS6490 SoC to socinfo
Date: Mon, 03 Nov 2025 16:53:09 +0530
Message-Id: <20251103-qcs6490_soc_id-v1-0-c139dd1e32c8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJ2QCGkC/x3MTQqAIBBA4avIrBP8K6irRIjoVLOxciAC6e5Jy
 2/xXgXGQsgwiQoFb2I6coPuBMQ95A0lpWYwyvRaKyuvyIMblecjekpSW2WiM31II0KLzoIrPf9
 wXt73A0s6SU1gAAAA
X-Change-ID: 20251103-qcs6490_soc_id-1302c425ad9e
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762169014; l=526;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=TbmiBoxPKzcW1UxoRCY4IynThedTQweoi5SHvSXhxgI=;
 b=gn3tGj1KDAszyV4v1LiuXYtVQwCSlMwB6MKGQ5L2+7R/c0PXybh5qa9orcpY0JnrlKTTbTqTB
 pZIDTJuMCGmAYtRJ09LCsHHGNN3BNAqzlrBzD+rMYglrWcAkkr4i7mq
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Proofpoint-ORIG-GUID: lHF6kSuer2H6BmbhUU02UrThrtcgKXNP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAzMDEwNCBTYWx0ZWRfXygXyn3EOyzEZ
 oWvorfZ5FNE8eM2es0K5FuvPMJXvUPjuN1/k5sLXkDzSbQ+ON0zjGrzGrN5Clop4+KQANTqLlo+
 BAp4ZfFT3QI9UymstrfJ/WebcVFnrGOx9sfvPj+dTqEoHCydJdpcym0/3R1DQOGnvj8wo687ziF
 ToyLTxTp6hKrAsaSvjDbN6lFhBNfvQciSHVbOEubYsx0EZVvku/HZpyobv+EwZF4pCfZiDiKgLd
 ilFcqQacprYgHm72eRZ9rVAbkKT4ewV25WyPnIqHOOXBY71OX9yzwuvJpzFM0Xt8uVpQRGTvgRs
 DtJTHdkV/ZND7UtkJTZFd9/oMjL1oPOPvA0KTVWGgjvJqHgeb3419wj5oHpp9Uu1cvCMk/NUErZ
 ozD8sn8T+8uecoEInjq7xvEL9sGUDA==
X-Authority-Analysis: v=2.4 cv=ZZEQ98VA c=1 sm=1 tr=0 ts=690890ba cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=XqTMHc_fffBHN5zSMQ0A:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: lHF6kSuer2H6BmbhUU02UrThrtcgKXNP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_01,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 bulkscore=0 impostorscore=0 suspectscore=0 clxscore=1011
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511030104

Add SoC ID for QCS6490 to socinfo.

Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
---
Komal Bajaj (2):
      dt-bindings: arm: qcom,ids: Add SoC ID for QCS6490
      soc: qcom: socinfo: Add SoC ID for QCS6490

 drivers/soc/qcom/socinfo.c         | 1 +
 include/dt-bindings/arm/qcom,ids.h | 1 +
 2 files changed, 2 insertions(+)
---
base-commit: 9823120909776bbca58a3c55ef1f27d49283c1f3
change-id: 20251103-qcs6490_soc_id-1302c425ad9e

Best regards,
-- 
Komal Bajaj <komal.bajaj@oss.qualcomm.com>


