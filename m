Return-Path: <devicetree+bounces-270430-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EKejBJK8pmlDTQAAu9opvQ
	(envelope-from <devicetree+bounces-270430-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 11:48:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F7A1ECECC
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 11:48:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 452E93139AEB
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 10:44:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C24C39F190;
	Tue,  3 Mar 2026 10:44:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="J/UMvrzt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="d/GAe8FQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F70239F186
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 10:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772534666; cv=none; b=NriHWZ+tgbow3QTu6aXFvEBrgV0ZM2cuArWjFaO0rDk6/80zriwftunBgcGYOxokESacv9y09J+1leglnb4VQjrgi8rvylX7qsMEdyWEXpnUk/qiY/c+c12TAcEbBxyKA1Xwx7O0T36hQz3URws/EtM4vYdbXHevllwi7ZiPJGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772534666; c=relaxed/simple;
	bh=USvLKa71RJbUjNptuk0Zb4PrEJ6wg3rpViEkKPUVfEk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Rd0m2WpVihcYG4kxscUOMObaDrlQgXQSbHjFOtGK5D8TkpM4y8UVWdHwVpF5NPC5wV1YIoHfX44R414gEqKCyUwUYf0xObpmgQhl+okMY1q3ICEGUL/FdL0TYKV72nn2XaKun50b1jzjujMBJliYXJmVsy78dtrdF6r7YhXqlvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J/UMvrzt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=d/GAe8FQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239mkfL2731209
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 10:44:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uPsCZgzCQBBFYAYpl3kgUmKQzmJKuP/HRIEP4qbKYw0=; b=J/UMvrzt6/qnvbwK
	Wuj1gAPXhg7Vs8jNotcx/CstjLoxRqe7pmzNyO6Rvayu7AqJjKyLWsYjgr55TvhM
	PnNbIsjsyapvUPDZ6XjEdhhAZWBzyufUjqD6HQcz/BowhdAxAXl6ZaXrQLOEZHeA
	xLn9D6tuAhEGyFslS+O/RLTRMENIUzWFQQQOIyulwfKvPWrDR986uxUkx3AMVFJe
	S+gIAZ+NGZ5+wY8uOmphcMXWxX6pKkgnFwJ6VHqi1/66eE3gAyp446bZa81p6S8T
	WoZrpvMORY6nil/h65PmW9dbcFSAS3+uCHQo+jG33c5gxytq1V83yBMdLctFJ92P
	z/58cg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnswe0ybc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 10:44:22 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb706313beso652251485a.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 02:44:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772534662; x=1773139462; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uPsCZgzCQBBFYAYpl3kgUmKQzmJKuP/HRIEP4qbKYw0=;
        b=d/GAe8FQoRxkf/yH99Hlae4wwTOvHzzeMlrhvGqK+zgFmfe6yyLYfwHFSwFZ4i+GRy
         kgIgLXT8DS+7zRqOXbIIHJ+SEItwvqVnwkoo3x7uIfw9oh/GkaYu1qoJEJzpo95kekOX
         BihPOVMIgi6uzt9Zc7Fm3DKB9PqWDSIHqqYKBmpNWXFKooO8AptPbp6AAOU0s82Kmg5E
         fCwEqkMgjEekz4Wh+aDObWm7rSmrnBgrTnTiDAmAElbzutamS0tIAvDgy+6ylzSWG+iu
         TMJsnE2TQWEiwJmvWKSjTCv51XcM468pk5ObQmvzwPG9Nd64vrLaVsSHeE6aYvEH7KQB
         jLgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772534662; x=1773139462;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uPsCZgzCQBBFYAYpl3kgUmKQzmJKuP/HRIEP4qbKYw0=;
        b=Ymo/u1jmBrPdn7dhYVJ6C9mpdr9/WE3D3j4j7VN3yTc+LEEQwvsBm1Fdbr7KtdBlRq
         cQsuZK6rIS9+CJViG1NYfrgJqD9N2/cHhRZlsK6YRYv6wEqjA9Mu/rXw/L27bftcng1Z
         ShayU9iLVDiXwblkaBRvLchTA28iVi7iKek8rZNVgyDUiK7fYnQfja/O+w40he8IJuZx
         DejiPDSDdGDn/P/rGJaRK7FQflMkPiBghlgkKKnDJTbfuNbMaZeXsctoGNJGgG0WukcY
         1PW6Ufh2Jps042y70HyVaas1vjrVd3FJE5gSuhSWAvfvTc8m1953Wtkjsl2P2uCQ28b3
         luSg==
X-Forwarded-Encrypted: i=1; AJvYcCXxI0XXW6WHmwuucJNYtjZzZ+xMwQXCtgQOWng0ppOgiLvcRxS8kfkat7wdRCWaN9OO01fCaJFk7wny@vger.kernel.org
X-Gm-Message-State: AOJu0YzazsQkNhTyjlww2SYNT7+yvLjiN3FIoi5E3QJtPWUFl5O/Kwmn
	cJWVPFbDFYde3SpytiEbZIk9x7vrH8VqU6uhX45N6H2N618P2+pT2TDyNzUZnXychSNG0NnXznD
	BQocZEQ1F3UBu/XMT8MeGQ9/znskMH3fkOY280IKTsDOp8e3VdYVSWLRgei5tKoYx
X-Gm-Gg: ATEYQzzWkrkY+R8K+UQFlch9ywSOvesFk/0E3X1gCM2h8VoF/4fKtKvAMGIW0VomceN
	l+O31NVYi3kYTdGQeoeVI0T1Iu1WQIolqoW8m81Jh6X4Y2FCNxX4i3abSCZQDzlAoZrqvEu49wC
	+FKHqeLPBzQaSXhYakpLT1k2GZw+7RPE+yGd9IGyziCr0BgfVT8hCZTCqWdepCfz8eo1n9m7vSM
	lucpZNA8gv/+ExH32eyecSRFArDHpCnXy5ZrHVzUXBvyBQV8RaB0+vFYb2Bp7oiNOPRrlnKxmHs
	s6quyxW0CvO2hHWN+61tHITb+n7sy7QCLoKc4grITbhE7eKv3s7dqe2lfI5X7tk19Km9Zj1b5za
	ek2d3353H8+2IUnMJTVk3GbLU+fzXoA==
X-Received: by 2002:a05:620a:c42:b0:8c6:db05:8eb5 with SMTP id af79cd13be357-8cbc8f4bf91mr1642534785a.67.1772534661355;
        Tue, 03 Mar 2026 02:44:21 -0800 (PST)
X-Received: by 2002:a05:620a:c42:b0:8c6:db05:8eb5 with SMTP id af79cd13be357-8cbc8f4bf91mr1642532985a.67.1772534660769;
        Tue, 03 Mar 2026 02:44:20 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483c3b770e7sm365722485e9.9.2026.03.03.02.44.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 02:44:20 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Tue, 03 Mar 2026 12:44:09 +0200
Subject: [PATCH RFT v3 2/2] arm64: dts: qcom: glymur-crd: Enable eDP
 display support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-dts-qcom-glymur-crd-add-edp-v3-2-4d1ffcb1d9f6@oss.qualcomm.com>
References: <20260303-dts-qcom-glymur-crd-add-edp-v3-0-4d1ffcb1d9f6@oss.qualcomm.com>
In-Reply-To: <20260303-dts-qcom-glymur-crd-add-edp-v3-0-4d1ffcb1d9f6@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=2562;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=oYayxBeDC7pF16QmDOEp94AwsI+iWmpc4bm3bvlQ8s0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpprt/UN/1noWpGL9NZrOGdxkmq010hsYflAJYa
 9fPObCCB/GJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaaa7fwAKCRAbX0TJAJUV
 VhWeD/99PekqsmT1jZbtklXh8ylS6DB6O66NhOBm+8H2XrplMe+Dxco3w+gXDq6fty2QmvuZ+Sz
 6g0sGJtItgpWsnr3Mayx3VrPEvqTrzgKtz9HOYZ6UCdI9Z/A8TZU5Pzkx74bTnr/b28nx4IjGSN
 hEjx+V60dPfjQ/WMQWbylr9b1tr/9tUP1oc0Ewgkf0z07mj9QIFtc89E52OKl4ZWe6eGg1ylMB/
 pAoe7p4VouyCeVL32F9sLzKdEybpWsiablOdtkcgKfxFh6HsHD/4l4RKd+NcwDiMeGZTQdOtfII
 StR5rJt0AZhyqWxHXXZlwK+HDrifW/su/TKGeUb5BL2Ith02aiV535i4BUr21CYrwi5rzRnd88t
 irJINvt0pJ/WANP5/SFnhg0mzk28zXdlOYelA8rZm64vTmSCz4ykYhTEjHeojGXzXmSKzULlmcA
 009Ew2UZCXjegB3XDGmkwsH4dwvok22KOeFPDKt/AYi3v57dtsZ+J4M2azsQglISrhf19e02axC
 7mhXY3pI9+GXm2fsKsN9mKcUUGjPy3r39XG6wi0v6NpiDyc3VOl4+CBY7Iwgf66HW2cbKUtVP6O
 RdFuupz/LSfGwmKyh7VRpknOOc770ZRixn3zqz3WYbIcrKWSfxx+JV4vnIiqGs/6qzTYEOlqZTU
 Ri+vGuGiWQVBrOQ==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-ORIG-GUID: bp7D9OIO7wuZjOYdHegpoS6kGZsXxXnI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDA4MSBTYWx0ZWRfX1/Zezu+j030q
 5+4iM+r7jFlyD4KcCfoVrD+X8sWtIr7eLkzkyel07fZQnGo48U+5Eg/3H6YeD+i061hmjEY7jbR
 lLEGKBtN/HuDMeWUp+1QazSq4Ch0nFquGBpgPbB6ZgAvOMx/d+HurvcOcllkL6ezU4nm3Jd83DS
 TqsV+/2Lv6PbIvCrdaiN/Dbx51XQLd8tH7YmYJlZH7SHmA7CVXeBAePxd9JbnzAHZlxgbsgeMRs
 72UdFdCCTj8ReOVGYFSG8yc1lK9dCtkqdi2IleLEqNUVD/ez5jUew0bDMNgY4n6OXcD0WbFv8jc
 s6gU8Q9IY1nmXK0BZxPeXQbyw/GbLSHlfyGiLcmlFHmAE0gdmgbrB5JUkw7vxcy0s1qDmVL1kaw
 TjkvSMDJ08X8BG/lFIfx46t5z6HxosqcZ6vNQxBSyLO4i+vNwiLJwjmGG8kBVOTnJviKaWe73xI
 PeGev8nw7fBXbkuGWWg==
X-Authority-Analysis: v=2.4 cv=TtHrRTXh c=1 sm=1 tr=0 ts=69a6bb86 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=68_4jy3stEaJOreQ4WQA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: bp7D9OIO7wuZjOYdHegpoS6kGZsXxXnI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 suspectscore=0 adultscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030081
X-Rspamd-Queue-Id: A1F7A1ECECC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,0.0.0.47:email,linaro.org:email,qualcomm.com:dkim,qualcomm.com:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270430-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

From: Abel Vesa <abel.vesa@linaro.org>

Enable the MDSS (Mobile Display SubSystem) along with the 3rd
DisplayPort controller and its PHY in order to bring support
for the panel on Glymur CRD platform. Also describe the voltage
regulator needed by the eDP panel.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-crd.dts | 71 +++++++++++++++++++++++++++++++++
 1 file changed, 71 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
index 795ab0df3b40..27a957c193c0 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
@@ -150,6 +150,22 @@ pmic_glink_ss_in2: endpoint {
 		};
 	};
 
+	vreg_edp_3p3: regulator-edp-3p3 {
+		compatible = "regulator-fixed";
+
+		regulator-name = "VREG_EDP_3P3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+
+		gpio = <&tlmm 70 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-0 = <&edp_reg_en>;
+		pinctrl-names = "default";
+
+		regulator-boot-on;
+	};
+
 	vreg_nvme: regulator-nvme {
 		compatible = "regulator-fixed";
 
@@ -487,6 +503,47 @@ ptn3222_2: redriver@47 {
 	};
 };
 
+&mdss {
+	status = "okay";
+};
+
+&mdss_dp3 {
+	/delete-property/ #sound-dai-cells;
+
+	status = "okay";
+
+	aux-bus {
+		panel {
+			compatible = "samsung,atna60cl08", "samsung,atna33xc20";
+			enable-gpios = <&tlmm 18 GPIO_ACTIVE_HIGH>;
+			power-supply = <&vreg_edp_3p3>;
+
+			pinctrl-0 = <&edp_bl_en>;
+			pinctrl-names = "default";
+
+			port {
+				edp_panel_in: endpoint {
+					remote-endpoint = <&mdss_dp3_out>;
+				};
+			};
+		};
+	};
+};
+
+&mdss_dp3_out {
+	data-lanes = <0 1 2 3>;
+	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
+
+	remote-endpoint = <&edp_panel_in>;
+};
+
+&mdss_dp3_phy {
+	vdda-phy-supply = <&vreg_l2f_e1_0p83>;
+	vdda-pll-supply = <&vreg_l4f_e1_1p08>;
+
+	status = "okay";
+};
+
 &pcie3b {
 	vddpe-3v3-supply = <&vreg_nvmesec>;
 
@@ -625,6 +682,20 @@ &tlmm {
 			       <10 2>, /* OOB UART */
 			       <44 4>; /* Security SPI (TPM) */
 
+	edp_bl_en: edp-bl-en-state {
+		pins = "gpio18";
+		function = "gpio";
+		drive-strength = <16>;
+		bias-disable;
+	};
+
+	edp_reg_en: edp-reg-en-state {
+		pins = "gpio70";
+		function = "gpio";
+		drive-strength = <16>;
+		bias-disable;
+	};
+
 	pcie4_default: pcie4-default-state {
 		clkreq-n-pins {
 			pins = "gpio147";

-- 
2.48.1


