Return-Path: <devicetree+bounces-268143-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AKbGCx6anmnXWQQAu9opvQ
	(envelope-from <devicetree+bounces-268143-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 07:43:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC15192706
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 07:43:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8AA40301A17D
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 06:43:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD9322FFF88;
	Wed, 25 Feb 2026 06:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RTTx6/g9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YzvuwzFt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C7932DF13F
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 06:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772001813; cv=none; b=uSzxsEaU19CsQYGwdtSA0hLtu/oNYFrhDX8d3FcL0OSxjvTzGbidZPCZt7H2fYgU58/BOxm0uOe+tIod8BUAwrtS+oFejvm3jj1k7EeKqB/b7clQwJOxingVTN7WiamXHjTpV/CKmPGBKX5Z5tahs9zeHF57mrS6D+U0xUkU0e4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772001813; c=relaxed/simple;
	bh=avCob4yWW3V7jcLmKuE+NBq/WFXkqZPL9iqis2i39aw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ocpy20QmHyzC58REbmf+hdYXrtkBL7zbVyBw9Cau2MjYc05hwL/rL1c36V4/bjxodVyo3NT2KhEbsIeNh73ksJ1QOHdr/pdF71/Nk8UrxCsSYOyJGP+QJ1hnpZtihaQ6gr4FBC9vpdbwqQKAcDOA539R/5Gz65I3CoQ7FyfNpQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RTTx6/g9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YzvuwzFt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61P3woqI057265
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 06:43:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=nqqZRbf6YJ1GCbe8Jl4JH9
	wQcD5ia7rsAecx0gYORHI=; b=RTTx6/g9TOBh2cnmw59eugIrYKMQA7czmNn8O3
	nca3Ukpx0+EoEq+M7nuJVt42sf3vqNnGcw1gx6qQuJ7I+MI9kIKLeHCyWqInhiI4
	lmiD82POTYlhFPqsJx1dOXEHq6M5V03E5EyMoHDB9WSznw4PDdotAAHnh32JgORj
	gTgqywyfmKGiKiK2pB5w4Aqc2IwTV+ux0CYDY60sfiwiX5hu1GO1Od3Twnev8htY
	pdvQ9AuOgtwtz7wxIFzcuBiL1fQcJfJYPHelYR/uH063TxF5Z69brMIUNWY+PxYq
	2CP9ZjCQLDl5k9UiRbsk5jIiKRPIioh0XIMAsD0oThxXNlog==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ch9sabj14-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 06:43:31 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-358f058973fso1165205a91.1
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 22:43:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772001811; x=1772606611; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nqqZRbf6YJ1GCbe8Jl4JH9wQcD5ia7rsAecx0gYORHI=;
        b=YzvuwzFtQLop/laHObayjZHlbwnv4Ywmo+1faRq7QScYQMeSQWU2VcXm9B1ZQmx4cN
         QBcVFNmt78zL3EgdXTI9xdVbhIFxecWQou+zHl4rzNqhd5mWqdK9Tgq/HckFsL3FmEoO
         oAWgFl5toveMwGJEQWaF3NkX0/VcQs7FQIoBfBeqrhNnN0Dnw0JJnRGpqzaNVhlgLonj
         E8T9W2Pc/cjSejPeaND6dfV6sgn3xA8PmYiZt5iiKfUOTR8o7PAuV4dNhBqG+3pJ5Yws
         IPhqy/5e6EYrnjZecDDkhNxUj/1wQacuhc2UccbgWSMn95HG2tPuUB5B7XRqqGRSDk8K
         byAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772001811; x=1772606611;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nqqZRbf6YJ1GCbe8Jl4JH9wQcD5ia7rsAecx0gYORHI=;
        b=n+1CmMxarUdVdGURV9Igrw1rRqbHDNE8IDOAsd4bs4n7wjdUPauODDlu7rpSpkROti
         rASVAcLSEY1okpT69ywVAmcUKp4BetoGVPaDKnHElUPNavQrSdCZs3u8441HCerRqU1W
         4NqXMCo/q4tc/3Ely2kHiyABpbwC4vQTXFBecjZdotXZ2b+/izX4GkdetAgeWjD/zkm5
         pAcGeRFUzqntkyNtUkHcZopLvM5oAb/x6Zn+Px4TSle9Vu7yj8+vJcPtQyO12S4pEiqj
         oSRbOhHUOUJR03ijA3m+7B61QkRX3qhuFLxOLh3S+u6sVNRh+VcpHPDbNFEYuwsdI748
         woHA==
X-Forwarded-Encrypted: i=1; AJvYcCUMxQ/rzBYbSswH+Sw2XOltpgA0i3+BOp6cjs2PjQwFJGk8w5G9QhE6ZVDqoTmv6HgnWnvDGlujS0CW@vger.kernel.org
X-Gm-Message-State: AOJu0YxvGa7vYh31WjBWWz8nCucnl3vvr/Db+Wa4ZKU/0zOIKOvIpzoD
	M5JGLgWynItCF2ueHJf4A7TEQwDs3idFS49+sgXXpdcYWGgxD1tjKQI5C53ZyYYAjbCkwzgeUZI
	26S5EqBc1CNfQSgjRUOHFT/bYifsnoHfE85lEzcbnvGFf4Q2cx2uQR+stJcB/UaQu
X-Gm-Gg: ATEYQzx4uRa3vg4uFU+fw98HnsnLx/Ss69h/cBL0g/MIeQj6wQXDevcekflewRdXPJ8
	JGKM1ZiET+ZRRDpjmy9dsyXcphn3LVA4CbPjU1MMnuvr/OyVjPwKpweJvVGIG2jLfrjfcS8ZjMF
	V6lMwVHHXkMMBVOyGE6+URRcIC7oyd9aWkj/T1WZjJ3sqvwUaPXiUnaClHMpZ5/Pbyf6RD9JLqi
	11muk0b1K0G2wA9ky5YBur4MosvQaHpVv1CYds/yjI+JE+y0b+mf07vyOuuGct8KEOCNUhOV8G5
	zFW4Zz25PgRKEvt/LY+9c1+P/8eSmKDE0hU/J6fBhsozslEVZwzil2/mOVSrtgpRkyS7lkO45FT
	YYvVgrNor+ShH6cFilurP/Nm0nGdi/eqShl3udt0S+LJ7dDlkAlz2JoggpAiYw/2G2KE7iYvaiV
	MsFuwPgV1NHdpcrHVCECyAdj6oOIE9wnlP0Md0IEG2u8amF4MVpW5IPReG
X-Received: by 2002:a05:6a21:7a96:b0:392:e81f:66fe with SMTP id adf61e73a8af0-39545ff2a17mr12139928637.66.1772001810800;
        Tue, 24 Feb 2026 22:43:30 -0800 (PST)
X-Received: by 2002:a05:6a21:7a96:b0:392:e81f:66fe with SMTP id adf61e73a8af0-39545ff2a17mr12139908637.66.1772001810371;
        Tue, 24 Feb 2026 22:43:30 -0800 (PST)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-826dd692b99sm12856570b3a.24.2026.02.24.22.43.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 22:43:29 -0800 (PST)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Subject: [PATCH v7 0/5] Add support to read the watchdog bootstatus from
 IMEM
Date: Wed, 25 Feb 2026 12:13:09 +0530
Message-Id: <20260225-wdt_reset_reason-v7-0-65d5b7e3e1eb@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAP2ZnmkC/22NwQ6CMBBEf4Xs2ZIFpSuc/A9DTIVFmkirXUQN4
 d8tnL1M8iaZNzMIB8sCVTJD4MmK9S4C7RJoeuNurGwbGXLMC9QZqnc7XgILr2nEO0WmMB0T5kg
 FxNkjcGc/m/JcR+6tjD58t4dJr+0q05jt/8gmrVAdMjJXOpZNW9LJi6TPl7k3fhjSGFAvy/IDD
 KCll7cAAAA=
X-Change-ID: 20250610-wdt_reset_reason-7a5afe702075
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772001806; l=3369;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=avCob4yWW3V7jcLmKuE+NBq/WFXkqZPL9iqis2i39aw=;
 b=YMcg4xA1OWocqrXEuSqYSSs6FYCRigA+RMKbsNk5grhxVQsVI6bWI82fCnwIAu5uqjSiVOMut
 3HBrE0e9LdzAK1mTVbwkGtPTgV/hyL92Zpuv50z14psfatSw+Alxqjz
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDA2MiBTYWx0ZWRfXxPYkTkfQZxw3
 n2ZgmFrWqQsc1t/OAcrq4fNwR9uS1S3g/3GfoWCzUkKMDrGwdvnnTkED9H5DeULsGii5XbWF/R1
 8PZTKOeZ5FweAWOo+Y0pPIRMy5sQArjhAOmXj67kBnFIXy3zZ/BO/kf24riHXqzz6iWW4V1qmyj
 icIHFWBw+tZ0UJN93H015Pvu7+dbLnjc3sqAysEgVjlq4vgrf2AmAurxEvAlSvFIub5G3IkyQ7+
 T+b44lcJDDoQ9rtrsL3rZldTmytfpGFKo8wYRJGTyLkJUIYfXr3P0vCe5hI9SglCvbeSS+Nz6tz
 sT3rkfu30H3DgwVLcI5PEGMevlJurHzsOpkuZtmzipw/zCibJ/LNUp+2ZPOPDw8qDxFf5BL8827
 paSfQAKfdBRnYBio4Q0JS7dfCAFTksK8xsaGB4lXBb7eyWyD86J0Ko9gEAgjRZvXB7vq/Nf6GQG
 cka4T4HPvWDkxjGLarA==
X-Proofpoint-ORIG-GUID: 3gSn5qt1LFhPO2kKMbr5xRNrsM0ebT-z
X-Authority-Analysis: v=2.4 cv=e7ELiKp/ c=1 sm=1 tr=0 ts=699e9a13 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=3xu3cfvniY9m67ySxx8A:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: 3gSn5qt1LFhPO2kKMbr5xRNrsM0ebT-z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_03,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 adultscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250062
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268143-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.0:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kathiravan.thirumoorthy@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7EC15192706
X-Rspamd-Action: no action

In Qualcomm IPQ SoCs, if the system is rebooted due to the watchdog
timeout, there is no way to identify it. Current approach of checking
the EXPIRED_STATUS in WDT_STS is not working.

To achieve this, if the system is rebooted due to watchdog timeout, the
information is captured in the IMEM by the bootloader (along with other
reason codes as well).

This series attempts to address this by adding the support to read the
IMEM and populate the information via bootstatus sysfs file.

With the CONFIG_WATCHDOG_SYSFS enabled, user can extract the information
as below:

cat
/sys/devices/platform/soc@0/f410000.watchdog/watchdog/watchdog0/bootstatus
32

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in v7:
- Collected the tags
- Added the reference link in 1/5
- Added the flag 'no-memory-wc' in 2/5
- Link to v6: https://lore.kernel.org/r/20260130-wdt_reset_reason-v6-0-417ab789cd97@oss.qualcomm.com

Changes in v6:
- Moved the IMEM compatible from qcom,imem to sram binding
- Updated the 'sram' property in watchdog binding to point to SRAM
  region and update the watchdog driver accordingly
- Dropped the Konrad's R-b tag in 2/5

Changes in v5:
- Rename property 'qcom,imem' to 'sram'
- Use dev_err_probe instead of dev_err
- Link to v4:
  https://lore.kernel.org/linux-arm-msm/20250519-wdt_reset_reason-v4-0-d59d21275c75@oss.qualcomm.com/

Changes in v4:
- Kept only the WDIOF_CARDRESET and dropped other codes (Guenter)
- Renamed qcom_wdt_get_restart_reason() to qcom_wdt_get_bootstatus()
- Dropped the device data and describe the required information in the
  DT (Konrad)
- Link to v3:
  https://lore.kernel.org/linux-arm-msm/20250502-wdt_reset_reason-v3-0-b2dc7ace38ca@oss.qualcomm.com/

Changes in v3:
- Picked up the relevant tags
- Dropped the fallback compatible handling
- Split the driver changes into 2. Introduce the device data in one and
  extend the same in another for the use case
- Link to v2:
  https://lore.kernel.org/linux-arm-msm/20250416-wdt_reset_reason-v2-0-c65bba312914@oss.qualcomm.com/

Changes in v2:
- Dropped the RFC tag
- Reworked the driver changes to use the syscon API
- Link to v1:
  https://lore.kernel.org/linux-arm-msm/20250408-wdt_reset_reason-v1-0-e6ec30c2c926@oss.qualcomm.com/

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>

---
Kathiravan Thirumoorthy (5):
      dt-bindings: sram: describe the IPQ5424 IMEM as mmio-sram
      arm64: dts: qcom: ipq5424: Add the IMEM node
      dt-bindings: watchdog: qcom-wdt: Document sram property
      watchdog: qcom: add support to get the bootstatus from IMEM
      arm64: dts: qcom: ipq5424: add support to get watchdog bootstatus from IMEM

 .../devicetree/bindings/sram/qcom,imem.yaml        |  1 -
 Documentation/devicetree/bindings/sram/sram.yaml   |  1 +
 .../devicetree/bindings/watchdog/qcom-wdt.yaml     |  6 +++
 arch/arm64/boot/dts/qcom/ipq5424.dtsi              | 16 ++++++++
 drivers/watchdog/qcom-wdt.c                        | 43 +++++++++++++++++++++-
 5 files changed, 64 insertions(+), 3 deletions(-)
---
base-commit: 3ef088b0c5772a6f75634e54aa34f5fc0a2c041c
change-id: 20250610-wdt_reset_reason-7a5afe702075

Best regards,
-- 
Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>


