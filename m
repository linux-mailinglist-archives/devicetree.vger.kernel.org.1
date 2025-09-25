Return-Path: <devicetree+bounces-221171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A0127B9DA0B
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:33:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5EDA21BC411E
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 06:33:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1AD42EFD9E;
	Thu, 25 Sep 2025 06:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TSVoe5gl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A27C2ECD27
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758781795; cv=none; b=ChMu1rpYow1+pAIh4IhQuFVYWVFsU/PKu9JoqxFZ4JjhF9eztGKfZ0HU32APVjMzLPPWArontilCLZwUk8MdduyQlyXXn70dJDlfDLvhz92ZpNfz8QgV6eo2jtWzYZ9C6SCBmkXcOhEsYss5itwRx7vA5tGz5teuJHkIn67CbX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758781795; c=relaxed/simple;
	bh=E3B3ByaBtuMatGnp2Pcxduj29OzySduOTeUAJyaDEsI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bKglwpBBj/NQ1wO5BLBQtRbqCwxL1JCJ5m04NIDbzkFPcnuJbwEf7gmDOet702jA2SbPA1lHgnXc0/FoUXWs3VnM/dnGL+pBrgNGwGMJD1/SHYNjLMUI5VGANclH2MFbleHfkQSPCBFrRzLFvle5XnN4ghYuZjCP+ufVeDN38Dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TSVoe5gl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P1J5lA002652
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GcCj/e9tgK8s4kiIpVDjeJ1bIplDWEorF8EPo+A1CcA=; b=TSVoe5glvmG9l6JY
	q7VDU3ShWssUSf7/bQUyB4c6WIh5NbOI7gkUT14Wr2QoZiTBcwSlvPTkAZGZuUbU
	jRsZnl9asiLyazehOmNiZqBadgpOa/GT0DddQbOeHkf99HQYPi/ZBJ0xoERJXJOz
	OLKe8QOmLktMQzWeSfoccL0rLIsS/Q0yEVZaD/6DL+9V0oa/Zf/7sraf6FTgsFcc
	JVVjM1CLB5fjIK9tkkzFY7Vb1eZyx4OuIeITTBaLSnBu+nZifbeupq0/kB5cPlL9
	EMaUaBWruq05lWP0juBJlHQXMx5AVU5IGEV5UOXwlASBbFIR6klTV4IJZhKv+WJG
	HxWpPw==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bajf1j71-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:52 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-78038ed99d9so988819b3a.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:29:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758781791; x=1759386591;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GcCj/e9tgK8s4kiIpVDjeJ1bIplDWEorF8EPo+A1CcA=;
        b=xEMQQT/+NUvTVC0AjjQZTpeqg6QhmJMBbbELuThUo6CWE0faa67ISkl5YKbptM/UFk
         G/7lU930ClZp10ZlK+DIE6j24WJZwZ5NsuuHbAB3OoSsJsRsKu5gt2nMPc2+18VVy/a+
         Rbt0Pi0Ybh4pVblHc/cRij25bK3iZTncsa+iZnGcIZtxClgljW0qI0Eejs3vHP7JOyOX
         f/yhabx3Od6zDB/tuMqwZPKhjkFqRL9HFz+x9IUTWOPchNm24ZjWyZqAexRKCVzlk6lA
         YGVtOL3Lt9gR1bnb558vnriBIqRSx1bN0hh/EaYbGpkHGCztK4NNmcFx0zF9XHise1Uv
         2F+w==
X-Forwarded-Encrypted: i=1; AJvYcCXVlyRg4PRpCqV2FfLjlpUtfDwWWAfJ8c7T43JDhrt0XjZtvhjx10WX7hI+r99jRvKTlSmipxRhANmS@vger.kernel.org
X-Gm-Message-State: AOJu0YycPH7bXogUnymlL4UbXvrRhRtdtU2cl1YSQtWBkulieJeJ9U9Y
	tWskv2DYAIZKkmrmsucnwXbVV2rblVbd8kFxSoJl64cjlf9eVvSyqQJ2VhUN2hZngUo7Mqzw6Ww
	ZEJSSB3j6uhBSeshddJoDKctGVbITp55A7eIlRk9+FSPdlyXwcpxA34P8+Q90rAz3
X-Gm-Gg: ASbGnctVgrYj/+I3n8hDRt8Ucw+fVo3kaJTpm/JFZ4welM1uv/r8JnTjoXF2MrnSDfk
	swSTeNLYzi2UKTTUeL6nnFDl9sLgr8drYXouaGPWPxqAiQaYi7ay6CU/xYlSVHt3XMtBpmvH4ZV
	pSkLgpb2kU/huHdnS8A/RHBDRBEvBOxvuE0koqqKFxlB6jgOE5kCn6lisnZRK0Ji1DXwF+jvSkm
	VcbVYGpO8RF4YRK3hQ2Nyj5YmKhZyb2BhlADJ9zFP3LaL+/QCQ8r2mvaFkLIREJQQgL7/8ukbxi
	SsCe7z5/WP+xuuG6Ry6cMBRaVhPp/7y8ZOeQ2Q4HkvNFtgk9LRcbQszDgfPcNPXDYI7z7KlWIzv
	9n5jEaHAED3Cws/yHkz7CYQRTaBKE5GWAHGBYUuaVOzt4AECRabDgQEBg/+AP
X-Received: by 2002:aa7:8896:0:b0:77e:ec80:b3e0 with SMTP id d2e1a72fcca58-780fced5bfbmr2922077b3a.25.1758781791360;
        Wed, 24 Sep 2025 23:29:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG8zvFmAMXrlLG0zIap/cG5mPBtSwZ0z6zFscRnmqOoRmAMSRaV6FOZu/Gm2TRFZJOs+sct+g==
X-Received: by 2002:aa7:8896:0:b0:77e:ec80:b3e0 with SMTP id d2e1a72fcca58-780fced5bfbmr2922037b3a.25.1758781790956;
        Wed, 24 Sep 2025 23:29:50 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810239136dsm952962b3a.5.2025.09.24.23.29.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 23:29:50 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 11:58:23 +0530
Subject: [PATCH v2 17/24] arm64: dts: qcom: glymur-crd: Avoid RTC probe
 failure
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-v3_glymur_introduction-v2-17-8e1533a58d2d@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: lnjfO81vxY3ME6DBztFNznFFAnxfF0cF
X-Authority-Analysis: v=2.4 cv=fY2ty1QF c=1 sm=1 tr=0 ts=68d4e160 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=zkxicyaTBexjGtpFqaYA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE2OCBTYWx0ZWRfXx+nSgK0Ln+0J
 b9uAmQmg9RBVO0z5hoREsbIKDn6KFdLtad8CGmtRrrO/t2H0oQpLJvAu32GFpdSRWoXd+s2veKw
 FazbsCKk+4UZkJl7owf3d3BzdbL5HKTW7c3/mMbfTEhh320XMdYWvfsrTb2iFM5eZ3p4aVBaMIq
 Urat58i2OOsl0zGoJPLUCkO1ZzekB8To7YxNbhwMqUb8ZBqBqJso3LgSOvsl2ZxYtr4XcFh2M7+
 J7G6wTyCsjLMXPAGuZ2ybKqlqSQGcjSZhIqHaTTSJt6RauhVWPQirOyapJSl2XH2qWlieQ6eqNW
 MRvFAUglD1s0GS4nBgrbBBpMb8E6KNl0YwF/DDYKOBeIa5lElQmxIzXkT+SQwa4j9WcR+i2qNEl
 PEuAsm93
X-Proofpoint-ORIG-GUID: lnjfO81vxY3ME6DBztFNznFFAnxfF0cF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 impostorscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220168

From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>

On Glymur boards, the RTC alarm interrupts are routed to SOCCP
subsystems and are not available to APPS. This can cause the
RTC probe failure as the RTC IRQ registration will fail in
probe.

Fix this issue by adding `no-alarm` property in the RTC DT
node. This will skip the RTC alarm irq registration and
the RTC probe will return success.

Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-crd.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
index d6003ae515e37049fdf17d6b604b974dc8e9fbbc..b04c0ed28468620673237fffb4013adacc7ef7ba 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
@@ -429,3 +429,7 @@ vreg_l4h_e0_1p2: ldo4 {
 		};
 	};
 };
+
+&pmk8850_rtc {
+	no-alarm;
+};

-- 
2.34.1


