Return-Path: <devicetree+bounces-241905-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B779C842E2
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 10:17:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id AB82A34DF95
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 09:17:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8A0B2E03F5;
	Tue, 25 Nov 2025 09:16:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FO0IJE37";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BNVuFhBi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0501C299A90
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 09:16:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764062206; cv=none; b=fLCIJKIqkhxNqlHwGfTiOYphWHpKMyVmbN6a4mCxSHEx8+6IBiXzJ12gVYuc0SV4d7dj51CS1XnOxt2Vh+Ps604nGGylW+qAUcFVN21SGHth2/eq2PwHvF/tEL58+6A3kXzBR4JjdbILp2B7e1oCdrJI3PUr1cpGc9/ACfiPLTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764062206; c=relaxed/simple;
	bh=tWpHdi7nbMnOJYgiZrrvDB33LvBqdYDfmoB9Fb4LBq4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QIPBVkJ1v5lCicZaIjJeh9NJ9VsUqRQDywr8e/ZFzbW1RpeJ3gSPUwuGKz/gVdzXYHkFmKrUeXZexpwuZLe8F5PRsJkgChe7Qe9JF4L19is1SATW4aBE7cN1AK8B7vBuq8Qok7RIWY6/V4NSLQ1rqQLIQz97Dt21JmuXeLrbRtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FO0IJE37; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BNVuFhBi; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AP92uHQ2655459
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 09:16:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SmBZIwvAyYonXobgVg5yAHf054UL0aBolUv+RaPd/CA=; b=FO0IJE37wIdzjVl7
	8U2XnvpPnCo14YE8LKwNHApk0JP/wfzXAhK0y1Ksy1nY/fDXsp1DtjCeKqMYfve0
	t/RUnn1O0t3ltZ91pJHQmcNhCJ54xDRvUXyKNPogUEyVcmeW29Q9HrmmadcFcN5Q
	T2CyxRDNnlSSJYJhJ4BuR11G1NlnXJbuV+RTtlHRTOv6h1b78v071FbbJ+nRPCrt
	BR+HBc4Y/zaANQhInD3LOS5A8aO8CfBIA5pN8mYZ3A6GXCVKTKHbypBdfnzvLqM5
	Cb0ZAcaMPS8xkE8/ivmbpWAz2bt4BRnk1W/svLrZzlyYpdG9sC/eo1KkRaonAg0H
	N5m7CQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4an9fxr1uc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 09:16:44 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-342701608e2so5552812a91.1
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 01:16:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764062203; x=1764667003; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SmBZIwvAyYonXobgVg5yAHf054UL0aBolUv+RaPd/CA=;
        b=BNVuFhBiQa3+LdecOtnxFkM04WlBspFmqzsGzVlKLnlREhu1t1FKr/Xl9H5SG1ZOGi
         sQUR83/etmoi8sjsXa5unXGZljKaBICtJ9LxNKXTsGOJ3o8DkCaz9r0qAhFdm4VnWH/z
         chge5n0DEYRe+W3q6MILJi58JmEMg+DINs0TOpFEOCCdrYfNnQmtwfetWHEi325iZgGm
         jDqkFIrIZs3dsNzb0UUW2kmHKI9i/UDyqliHdRLtBSDKpQJcltiL9D0PI3Xvw9rSL0+Q
         zFmD/aN0VN0V7fzvDEyqkvaGuAgTabxn2cU/T1eAFApBvMmJPL8uGxBl2iYRsEOyQyzH
         bATQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764062203; x=1764667003;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SmBZIwvAyYonXobgVg5yAHf054UL0aBolUv+RaPd/CA=;
        b=RrdhGc1H1flAVogb2D8BYUuNWh/xvpFZoPDqflP27SdoxHW/paA5GbHcDhQU6sM34P
         moYqJMxDKum/j3qs9d75r/02bNZLDpHNo9FGOYSg+t3LVXecwyLd7infh2yvP0u+ux1f
         mo7bcCjEKQX5EYijjDUeaGvQ0yBYTOxdW3YCBkLorKOym8XRM/NDxqyleVHbLlc5z+uy
         me3aGoO+z9thN5fxN2nRr8FdacBhtgZFqGFC/FmGtqHfRJZwtQodTXsXCUVyjtc8zMBj
         eBPeB8VthR1E22TtfALbbvZxoFcb59DF1Fw+DMWmeXOQGNx6/XgeJnPe4wHqRvZoV5Gr
         ODUw==
X-Forwarded-Encrypted: i=1; AJvYcCUDa2643C9kSzexAuy8oTLd/tGz2khRUofctm+GPLGPjniiu8EIwD6CQB+AxD8pD/Ia+NVJK2Kj4mpr@vger.kernel.org
X-Gm-Message-State: AOJu0Yx769C9V1QhAJPY5QmiXCLcCl6rUmzjLZ+j8fua1Dj/7VDEvCeN
	TMmj7WS9+OePPW6Z6QFhOarn3zoq2MGBA2zKJ65bsc4UvBE4OO6ObzDzkgKQinJlJyqXfMP2NNV
	uraV2cfTvkigIrfy8tnM7XQ1VtwLRYVxufOquGei/gCrmR7B+zRZ4C6CFBNObdYYiaVSwoYtc
X-Gm-Gg: ASbGncuHbQznSEAtOEDv7j57g/ND8a5ijr9ODUyXvlXmWrnRURbITY72mOgw+u4lUb+
	/Pzu6A/kXaToCiYEVxJ0MuHoH9wP6qwf6VXJ7Pehikia5TnEngxS6EYDMzhHipWFSam83Wz5Qje
	HgmdePYRPVuwxuUkw/4Oa+nqSt2JEhIqqhnkSaLiJYMx/TDEtzImOhWWUTs/H1rOrrlzTgdZPMc
	8tVeSAG25nPALaS0Q3yWS8FpsHnymxNe/qmuHFdzdzMpG06jyUuyYuOwm9+Z0CgMaLEt51lAoZq
	OwgoDhuA0lLyKDhJqzFLATgFNlBKWeFk9W/Ni37ga/je8Svt1CisIVNJwcwBzyn5Lzf8r5F4b3z
	gZn7hFPnPKK0JOl0S4RWJPW1fDToX9ParTWZ+GqATiBo1IMRpZZWI4Cd/aaU7p3LgM2GjaO8PFB
	l3NFDUrz6xJYReMzJc8ZR9CniaJfDlng==
X-Received: by 2002:a17:90b:3bcc:b0:340:a5b2:c305 with SMTP id 98e67ed59e1d1-3475ebe6a4amr1526129a91.2.1764062203360;
        Tue, 25 Nov 2025 01:16:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH5UrMsMXxvsKx4oZFO0DJmIhsL6jSmmpW9DCStG2iilT/drd/04JqRZ+COkyHcFFZizJ0AJQ==
X-Received: by 2002:a17:90b:3bcc:b0:340:a5b2:c305 with SMTP id 98e67ed59e1d1-3475ebe6a4amr1526108a91.2.1764062202891;
        Tue, 25 Nov 2025 01:16:42 -0800 (PST)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7c3ecf7c29asm17288851b3a.9.2025.11.25.01.16.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 01:16:42 -0800 (PST)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Tue, 25 Nov 2025 14:46:23 +0530
Subject: [PATCH v2 2/3] soc: qcom: llcc: Fix usecase id macro alignment
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251125-glymur_llcc_enablement-v2-2-75a10be51d74@oss.qualcomm.com>
References: <20251125-glymur_llcc_enablement-v2-0-75a10be51d74@oss.qualcomm.com>
In-Reply-To: <20251125-glymur_llcc_enablement-v2-0-75a10be51d74@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>,
        Jonathan Cameron <jonathan.cameron@huawei.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764062193; l=5126;
 i=pankaj.patil@oss.qualcomm.com; s=20251121; h=from:subject:message-id;
 bh=tWpHdi7nbMnOJYgiZrrvDB33LvBqdYDfmoB9Fb4LBq4=;
 b=Wpy3hUe1nSyZHU/9tx098YBM8InewrXHPYS5RDWMiyp3qdgC4ISjZYMPPHH+SuphXJuXaCFEn
 kT+sK28+UkQBv995LC1aV+CrNL/Gz8UXSgOkVhjfCRh4YPacPT6JjO3
X-Developer-Key: i=pankaj.patil@oss.qualcomm.com; a=ed25519;
 pk=pWpEq/tlX6TaKH1UQolvxjRD+Vdib/sEkb8bH8AL6gc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI1MDA3NSBTYWx0ZWRfX8Lf26A+TsUhp
 AvWhciqkZkCnVYoqqXu8/5LRTgcZYm2sC1Mu43gH7pUQ/5zDztAKjrQFAGMNbVIizAAMnk/7W/7
 wzacGkp/AGasjSSXYWIKt0iA5SBqg+Z82RqGrddUkmbSBFG4G+kCIsvcW9wVimQ1BohI735r8rr
 7kyKssWP9XgVdSzJhayx8xuniOdKa6Szo4LadbotZRdN1jKoFhzeytc01+iALNyDI7IDai7KTTc
 46TkFfPTHFWfwhShKIw+2pQ0GaAQ3rlqMkD1HZQ9TtE3JRh3j2XWSN2uBQUHXb4nlRlvoe+QOB2
 I0HJFtpnlBSmExBrozemxk4yDfkyw2qdqCbSk41JvnHbt5+4zIE33CBbaVkEWvD295pQ5VUjigg
 ihmM73Q+MgXedXw0Q0N2P/dS/XWs+w==
X-Proofpoint-GUID: Aexy2DVBipAAZzPcfyvKhWy6X4W4ijpg
X-Authority-Analysis: v=2.4 cv=I6tohdgg c=1 sm=1 tr=0 ts=692573fc cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=6jWV39w10dW8_DUzC0IA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: Aexy2DVBipAAZzPcfyvKhWy6X4W4ijpg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-24_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 spamscore=0 phishscore=0 malwarescore=0
 adultscore=0 clxscore=1015 impostorscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511250075

Aligned macro values for usecase id along the column length

Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 include/linux/soc/qcom/llcc-qcom.h | 148 ++++++++++++++++++-------------------
 1 file changed, 74 insertions(+), 74 deletions(-)

diff --git a/include/linux/soc/qcom/llcc-qcom.h b/include/linux/soc/qcom/llcc-qcom.h
index 0287f9182c4d..c52464262ab3 100644
--- a/include/linux/soc/qcom/llcc-qcom.h
+++ b/include/linux/soc/qcom/llcc-qcom.h
@@ -8,80 +8,80 @@
 #ifndef __LLCC_QCOM__
 #define __LLCC_QCOM__
 
-#define LLCC_CPUSS       1
-#define LLCC_VIDSC0      2
-#define LLCC_VIDSC1      3
-#define LLCC_ROTATOR     4
-#define LLCC_VOICE       5
-#define LLCC_AUDIO       6
-#define LLCC_MDMHPGRW    7
-#define LLCC_MDM         8
-#define LLCC_MODHW       9
-#define LLCC_CMPT        10
-#define LLCC_GPUHTW      11
-#define LLCC_GPU         12
-#define LLCC_MMUHWT      13
-#define LLCC_CMPTDMA     15
-#define LLCC_DISP        16
-#define LLCC_VIDFW       17
-#define LLCC_CAMFW       18
-#define LLCC_MDMHPFX     20
-#define LLCC_MDMPNG      21
-#define LLCC_AUDHW       22
-#define LLCC_NPU         23
-#define LLCC_WLHW        24
-#define LLCC_PIMEM       25
-#define LLCC_ECC         26
-#define LLCC_CVP         28
-#define LLCC_MODPE       29
-#define LLCC_APTCM       30
-#define LLCC_WRCACHE     31
-#define LLCC_CVPFW       32
-#define LLCC_CPUSS1      33
-#define LLCC_CAMEXP0     34
-#define LLCC_CPUMTE      35
-#define LLCC_CPUHWT      36
-#define LLCC_MDMCLAD2    37
-#define LLCC_CAMEXP1     38
-#define LLCC_CMPTHCP     39
-#define LLCC_LCPDARE     40
-#define LLCC_AENPU       45
-#define LLCC_ISLAND1     46
-#define LLCC_ISLAND2     47
-#define LLCC_ISLAND3     48
-#define LLCC_ISLAND4     49
-#define LLCC_CAMEXP2	 50
-#define LLCC_CAMEXP3	 51
-#define LLCC_CAMEXP4	 52
-#define LLCC_DISP_WB	 53
-#define LLCC_DISP_1	 54
-#define LLCC_VIEYE	 57
-#define LLCC_VIDPTH	 58
-#define LLCC_GPUMV	 59
-#define LLCC_EVA_LEFT	 60
-#define LLCC_EVA_RIGHT	 61
-#define LLCC_EVAGAIN	 62
-#define LLCC_VIPTH	 63
-#define LLCC_VIDVSP	 64
-#define LLCC_DISP_LEFT	 65
-#define LLCC_DISP_RIGHT	 66
-#define LLCC_EVCS_LEFT	 67
-#define LLCC_EVCS_RIGHT	 68
-#define LLCC_SPAD	 69
-#define LLCC_VIDDEC	 70
-#define LLCC_CAMOFE	 71
-#define LLCC_CAMRTIP	 72
-#define LLCC_CAMSRTIP	 73
-#define LLCC_CAMRTRF	 74
-#define LLCC_CAMSRTRF	 75
-#define LLCC_VIDEO_APV	 83
-#define LLCC_COMPUTE1	 87
-#define LLCC_CPUSS_OPP	 88
-#define LLCC_CPUSSMPAM	 89
-#define LLCC_CAM_IPE_STROV	 92
-#define LLCC_CAM_OFE_STROV	 93
-#define LLCC_CPUSS_HEU	 94
-#define LLCC_MDM_PNG_FIXED	 100
+#define LLCC_CPUSS         1
+#define LLCC_VIDSC0        2
+#define LLCC_VIDSC1        3
+#define LLCC_ROTATOR       4
+#define LLCC_VOICE         5
+#define LLCC_AUDIO         6
+#define LLCC_MDMHPGRW      7
+#define LLCC_MDM           8
+#define LLCC_MODHW         9
+#define LLCC_CMPT          10
+#define LLCC_GPUHTW        11
+#define LLCC_GPU           12
+#define LLCC_MMUHWT        13
+#define LLCC_CMPTDMA       15
+#define LLCC_DISP          16
+#define LLCC_VIDFW         17
+#define LLCC_CAMFW         18
+#define LLCC_MDMHPFX       20
+#define LLCC_MDMPNG        21
+#define LLCC_AUDHW         22
+#define LLCC_NPU           23
+#define LLCC_WLHW          24
+#define LLCC_PIMEM         25
+#define LLCC_ECC           26
+#define LLCC_CVP           28
+#define LLCC_MODPE         29
+#define LLCC_APTCM         30
+#define LLCC_WRCACHE       31
+#define LLCC_CVPFW         32
+#define LLCC_CPUSS1        33
+#define LLCC_CAMEXP0       34
+#define LLCC_CPUMTE        35
+#define LLCC_CPUHWT        36
+#define LLCC_MDMCLAD2      37
+#define LLCC_CAMEXP1       38
+#define LLCC_CMPTHCP       39
+#define LLCC_LCPDARE       40
+#define LLCC_AENPU         45
+#define LLCC_ISLAND1       46
+#define LLCC_ISLAND2       47
+#define LLCC_ISLAND3       48
+#define LLCC_ISLAND4       49
+#define LLCC_CAMEXP2       50
+#define LLCC_CAMEXP3       51
+#define LLCC_CAMEXP4       52
+#define LLCC_DISP_WB       53
+#define LLCC_DISP_1        54
+#define LLCC_VIEYE         57
+#define LLCC_VIDPTH        58
+#define LLCC_GPUMV         59
+#define LLCC_EVA_LEFT      60
+#define LLCC_EVA_RIGHT     61
+#define LLCC_EVAGAIN       62
+#define LLCC_VIPTH         63
+#define LLCC_VIDVSP        64
+#define LLCC_DISP_LEFT     65
+#define LLCC_DISP_RIGHT    66
+#define LLCC_EVCS_LEFT     67
+#define LLCC_EVCS_RIGHT    68
+#define LLCC_SPAD          69
+#define LLCC_VIDDEC        70
+#define LLCC_CAMOFE        71
+#define LLCC_CAMRTIP       72
+#define LLCC_CAMSRTIP      73
+#define LLCC_CAMRTRF       74
+#define LLCC_CAMSRTRF      75
+#define LLCC_VIDEO_APV     83
+#define LLCC_COMPUTE1      87
+#define LLCC_CPUSS_OPP     88
+#define LLCC_CPUSSMPAM     89
+#define LLCC_CAM_IPE_STROV 92
+#define LLCC_CAM_OFE_STROV 93
+#define LLCC_CPUSS_HEU     94
+#define LLCC_MDM_PNG_FIXED 100
 
 /**
  * struct llcc_slice_desc - Cache slice descriptor

-- 
2.34.1


