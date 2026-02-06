Return-Path: <devicetree+bounces-263459-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GOYSNccnhmmLKAQAu9opvQ
	(envelope-from <devicetree+bounces-263459-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:41:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F14B1013A1
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:41:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2C52A3013B61
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 17:41:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABA0741322E;
	Fri,  6 Feb 2026 17:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D13jyxbU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="j9iXisGo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DAF43ECBC2
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 17:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770399684; cv=none; b=W2MxZcBw1quQAZOuwjj5I8b0vlgrxx76nqQbjcnOVxtYBCdXsHiQBit41hCWdn+K9YGceHJPUmkIC4LLicp5xvQinwz/oJzEr6MFR9MxcIz4/nUcZT7fJZkj9+WeXNTQkpeWVi487Bm7pOVvNOCj/WDxZoQatnZl/pNKo+mZ9Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770399684; c=relaxed/simple;
	bh=ZjE7RcuIVkDKW+gkz2F0Q1QHiB9Pelc32Mbo5ZU22vY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=H1YMKaI2DdqOipNZ7N7f/nSFRAW9iTwzEJa5ASYQqcq7oTVdyxD1OybvjUSgGx5f0aI9lE0SaqkM5CnOonwYAx0a6MktbN9/IeLMzN7CzHTxArvQekq5LMQ1LwBTS+gc4q0oaD9tYI+GIzA0uYkzRtCuKdjuThmJ9HYxK0ERNXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D13jyxbU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=j9iXisGo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 616FRIiP4041954
	for <devicetree@vger.kernel.org>; Fri, 6 Feb 2026 17:41:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=GJY7Q8KgeqjK4HZ8s0guDZ7j1NJimDnCIDM
	9xVU1o78=; b=D13jyxbUJBVfBnwyUwiafwSUS+4LAfjQmgFRIQU/Gh7bo/wgcoi
	Tdp3uUMlUtx1CH+IJ4NfX9yJcUMFEMDJ9LfWk8M+6SNDkmF3sUvELvzly+4ylJEz
	UaalPqmm870c++cws87ALiF6PfUpW3XRzerwexsCq8zVVQQnkwhMgW/B0bPfqUGo
	9j7sHVZqccyL/mQKisbU64Yj6MuSOeOG3Y5UmFrGZtN/znPHkQNfnCwxw3NAPM9a
	LQ+n+fhaLKl1j4CIbQ2HQCijWuAJfs4B/K+9XF9Bj8pZT6gGZZPeqrH20yiabAsf
	DxNx7vh0NgalDIQEAHq14O8vLBGhKWh5Vvw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5c2w1u2a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 17:41:23 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c5e56644646so2524453a12.0
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 09:41:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770399683; x=1771004483; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GJY7Q8KgeqjK4HZ8s0guDZ7j1NJimDnCIDM9xVU1o78=;
        b=j9iXisGoPAlnp9nVkRH819ElxzHFTNIRU6nOt9bebhHtYLgT+ho86xl2xib+Xi9xZX
         PjZSTAvkEuyCM6vKQpMRksEyXaRKFl4J/EDDaJ4A0sTZ/RUOEfgI/wbEy+E/iRU+/pfs
         OkAQgddWJghvgjXe4rcT9TWIL6iOKb8woVNHnDt54hYxUMBkrAoh71PdHw56Tu+GhwIc
         lBYUH8ikknOqjdv2GGI/4oBoOjkLzgBJZPDxr0A0FMW9W05a9vMsECbD+oSHFnDvxRMq
         nc5CB8UGCr0sNZ9nFOVtlOF22omATzMo6dMgX1husePHCQoPqVtOZZjd13X8TnSWRyvm
         nAPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770399683; x=1771004483;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GJY7Q8KgeqjK4HZ8s0guDZ7j1NJimDnCIDM9xVU1o78=;
        b=GJAn5IfLy5zHul3fdf1nCzKJ/l7SHJla1zbio7pzV0GDtKmeuAygLt44zIbPfYglrE
         HZHO3aEJZVuO7gUg7l6dxfAWGSi6pqkXiWnD4/8IX6ij3GlBfAse15yuDJEQINq0Puuc
         WIzUnv2eUDttAlh8RkEggwgWYLDRmQ/LeOeXovmvyl6JH1gY5eY+OLerLV18Iy8kaD+Q
         OYOlr0fPKr4UOgEqsolW+ugg410d/peT2BHzR1ViWBbBuorC5SPdM9oCPkSaqXcLlufo
         D7y3x5QWnAHq82f0j5mrj4feFhAMq/cV6vz/BM9QPDJKZPE86UkvfpJ6NeJq9Z6N9Dly
         8GvQ==
X-Forwarded-Encrypted: i=1; AJvYcCXwZNq9xE84LmV9+0W0YGRHNkJ1rcMGAfbopSsCHdSr8UFc81q11pPWnBSaxuc/pDnUB3BIpH1vAjnX@vger.kernel.org
X-Gm-Message-State: AOJu0YzX2k8Q5swcJ2UnvBU0zUg9sL/uObXuFc74NMtuaAVk4Jx0j51p
	RJxfEmYYNcAh3Nqu8OLH29+lAUfhapZG/dL8NC/d45sClAHX83VqiDj0iUztWNVS3FWNafsiotI
	9HjkpdwDB/C1w1ZkR4h7QX/Wg4+Fyhf8+jZ9XAc5A/AefEfWMyRqj/NGDWRUMD43A
X-Gm-Gg: AZuq6aJYsu90eWry9zOvfEHK/2YAs4zaw1/0jJ+Um42avJHvW9IvBfkZNOo3HsWXCpK
	wD2K09ZfVpGNsJXKV/g4pVbYZ9qowP3KxPE7Q0hzDUkhKrUESc3n/09L8JkWZrdNRKY9PAzjfIJ
	37muPNxamoAwSrbEotc1ApkvrqqS9XFeEezszto4m2RxwnNFu9aha8XhqUVdSn/erp5XoMJ/Z6j
	tfa+D+vfEtq5Bz2Zm+rrMHBs9W41JAFcJCS08EDhyOvCby+y2pu+ViPAuKw8pJefsK0JnqeZiAX
	dgV9AeP1bXhM2DJmkEw+i8/8Avgjkio2E4wr/3dVKH7UZGM+DjoUA8xUBXmuq0EoG35PJPvKio2
	32igUB98T/etflGt6krw0Soc8xjL+IVZWpFv6TDi9K7A=
X-Received: by 2002:a05:6a20:c901:b0:35f:31bb:5a5d with SMTP id adf61e73a8af0-393ad87765cmr2936077637.2.1770399682869;
        Fri, 06 Feb 2026 09:41:22 -0800 (PST)
X-Received: by 2002:a05:6a20:c901:b0:35f:31bb:5a5d with SMTP id adf61e73a8af0-393ad87765cmr2936059637.2.1770399682301;
        Fri, 06 Feb 2026 09:41:22 -0800 (PST)
Received: from hu-ptalari-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c6dcb5eccbdsm2639387a12.19.2026.02.06.09.41.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 09:41:21 -0800 (PST)
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
To: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Praveen Talari <praveen.talari@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        bjorn.andersson@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        konrad.dybcio@oss.qualcomm.com
Cc: prasad.sodagudi@oss.qualcomm.com, quic_vtanuku@quicinc.com,
        aniket.randive@oss.qualcomm.com, chandana.chiluveru@oss.qualcomm.com,
        jyothi.seerapu@oss.qualcomm.com, chiluka.harish@oss.qualcomm.com,
        Praveen Talari <ptalari@qti.qualcomm.com>
Subject: [PATCH v5 00/13] Enable I2C on SA8255p Qualcomm platforms
Date: Fri,  6 Feb 2026 23:10:59 +0530
Message-Id: <20260206174112.4149893-1-praveen.talari@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDEyOSBTYWx0ZWRfXxgUM9G7HN25Z
 vilUkd9a1m6N1Fr5606ZVCcEYWzwk+h46uX1jqgNzpVzMyNC4fLzh3vxs+aPChQ/NqgM53Os2Hm
 BsMBh2UE5pbd6ERBlIBlx0pnYppgiDwzyrikHRQqRhZuYZGqwd9J+5DMRdnYXDco8KMcfkwPic+
 jvjZUbdvVlW5ZPQkYc8D6GonEbgy/d46G90pXJP7vExDBLBEpSS4LCZEa+/hJ43sZXVph+1pWQe
 NeBhHcO/hoFh/4/aDtIE8M4q6XP/so6lj1n/pEQ/F6VMQfeC8RZKyCqnRz6VtC6vJgtPF0K0TEZ
 2GHBTZVqBMEAFnF2mgiHfG27opidc+NQrX8PZef/+y9liecO2iHRzHv7maLvDV0XHTpnmEJC1ZJ
 1/jII77UVUUkfk4EAUhIy3/zfnf1SWq7VbJgLbkmu5TrzbXwdV4UgymqxLNw0iFBviO6g94GkTi
 aM82p57OcozPqy27a5g==
X-Authority-Analysis: v=2.4 cv=Wtom8Nfv c=1 sm=1 tr=0 ts=698627c3 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=8413JC8MLbS8ckBEwAwA:9 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: eAgOrgjUC8Nt5mErQDfXNKnwH4TBafnm
X-Proofpoint-ORIG-GUID: eAgOrgjUC8Nt5mErQDfXNKnwH4TBafnm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_05,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 impostorscore=0 spamscore=0 lowpriorityscore=0
 suspectscore=0 malwarescore=0 clxscore=1015 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602060129
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263459-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[praveen.talari@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.991];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4F14B1013A1
X-Rspamd-Action: no action

From: Praveen Talari <ptalari@qti.qualcomm.com>

The Qualcomm automotive SA8255p SoC relies on firmware to configure
platform resources, including clocks, interconnects and TLMM.
The driver requests resources operations over SCMI using power
and performance protocols.

The SCMI power protocol enables or disables resources like clocks,
interconnect paths, and TLMM (GPIOs) using runtime PM framework APIs,
such as resume/suspend, to control power states(on/off).

The SCMI performance protocol manages I2C frequency, with each
frequency rate represented by a performance level. The driver uses
geni_se_set_perf_opp() API to request the desired frequency rate..

As part of geni_se_set_perf_opp(), the OPP for the requested frequency
is obtained using dev_pm_opp_find_freq_floor() and the performance
level is set using dev_pm_opp_set_opp().

Praveen Talari (13):
  soc: qcom: geni-se: Refactor geni_icc_get() and make qup-memory ICC
    path optional
  soc: qcom: geni-se: Add geni_icc_set_bw_ab() function
  soc: qcom: geni-se: Introduce helper API for resource initialization
  soc: qcom: geni-se: Handle core clk in geni_se_clks_off() and
    geni_se_clks_on()
  soc: qcom: geni-se: Add resources activation/deactivation helpers
  soc: qcom: geni-se: Introduce helper API for attaching power domains
  soc: qcom: geni-se: Introduce helper APIs for performance control
  dt-bindings: i2c: Describe SA8255p
  i2c: qcom-geni: Isolate serial engine setup
  i2c: qcom-geni: Move resource initialization to separate function
  i2c: qcom-geni: Use resources helper APIs in runtime PM functions
  i2c: qcom-geni: Store of_device_id data in driver private struct
  i2c: qcom-geni: Enable I2C on SA8255p Qualcomm platforms
---
v3->v4
- Added a new patch(4/13) to handle core clk as part of
  geni_se_clks_off/on().

 .../bindings/i2c/qcom,sa8255p-geni-i2c.yaml   |  64 ++++
 drivers/i2c/busses/i2c-qcom-geni.c            | 306 +++++++++---------
 drivers/soc/qcom/qcom-geni-se.c               | 265 +++++++++++++--
 include/linux/soc/qcom/geni-se.h              |  19 ++
 4 files changed, 477 insertions(+), 177 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/i2c/qcom,sa8255p-geni-i2c.yaml


base-commit: 9845cf73f7db6094c0d8419d6adb848028f4a921
-- 
2.34.1


