Return-Path: <devicetree+bounces-266475-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SMFiJcHxlWlTWwIAu9opvQ
	(envelope-from <devicetree+bounces-266475-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:07:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A21215815D
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 18:07:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 343DB304E33A
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 17:06:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81BFF345738;
	Wed, 18 Feb 2026 17:06:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dL08YxIV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YHYuM1BT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1853451DA
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 17:06:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771434369; cv=none; b=qiars8QydLsE/rqoPQ0eQO31g8otAmHNIYtEf1px9w5/ejkd1tDjxFGALhGZLR+P9eDJxw+2Lv66ciJcH8qXJ3yRt6gIGchO6lH+3o4enjjoue4DNRa2k6NjFurjqVBHx0tBg0p1TSdHLXSDdid02xwl1aZgZxaCyfSavrUUYzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771434369; c=relaxed/simple;
	bh=eNUPHACdGvd5iZVpi/2IdeMGbrdFYD389Fy9diCrOeI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CvZXW+y9/YatXemt0clILJZ7LTPzlI1XWKeUzcbDhWIbAgI4jxkiG/Q8jrktSry7EVD6jzm6M4tCb6tP8d+y7E9vggvrpRsU1GDk5+l4/xXfsSWq3esARVNHxw7CQr/y7TxpjZ2wn5xFQsr9tuRBUf3G15FVv4170fMGv13bd1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dL08YxIV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YHYuM1BT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61ICJHQt1196986
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 17:06:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EQUYPq3PZR5/JyJtJ7GKTj5OPFi9JWPmB+7kOkJngY0=; b=dL08YxIVggQOpOOn
	WCdkNXRkz8YHOLrBOjDkBT5aH/5AdxHvHjOZbgbpZ6jOPEzfmlj+H8f1H0dc6nxy
	m7JcRjrHg1ytltM8BzX30P5Fp0SARSSX0vsGQdEs5gx81IkjY6QlmzTf5RcKpLrL
	MsKuK7/s080xrqLxZjMRdDR/Ct9vWlDoafxUgnpHgXkkuEAzS7VAhZrJBrvWjomB
	HOInSuhlJSsoyOvOz8CXEO1sBOFfLp6w8kXngIV6RWJk0ThmzFJt6P06FaSIqxJY
	PBHIM1BGM0h+My2k7fdK03v7AL5adqw5esH+i+rhM7vtJNrFcOn1jk1r59F8O3V0
	Z0tjCQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cd13rtmr9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 17:06:06 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb4d191ef1so4523985a.0
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 09:06:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771434366; x=1772039166; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EQUYPq3PZR5/JyJtJ7GKTj5OPFi9JWPmB+7kOkJngY0=;
        b=YHYuM1BT5tMg/bUAOHmf/onejK3iP+2QzWhF1gRWB+moKwcFO7PnCYf1CsG50mCq18
         YkqdFUq1rxR7JmIt6XovvSRiZ6QiIWy/X55yV6+hQV+UKEgHKcPL7mfLVzRdJ3z5LQE9
         ZZsItK91JRv8H3BSgcDfZZTRGWy6pmCJxIE3Y+PzWMqcC4zukqooqUO1I3YVQ2xgL8BR
         /kavjpqMg/jJPBH6z5i754ZhfNrvjJNDVDRmsKTtoMXIotx+W38cxOneEkTJJ/ck5o0y
         /cIuyaKeYZCUIVq32adRnbeQKurU3+edqhOznevCJ2FqP/KS+gOFU0m2RhaU1S56Ln5c
         XlUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771434366; x=1772039166;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EQUYPq3PZR5/JyJtJ7GKTj5OPFi9JWPmB+7kOkJngY0=;
        b=IoPVdHngds18VrSwyyl/Wo5YWF79RuIBm/QFoOryTc0FOCBQPdQBgxvf5EBzybXoJh
         rWQJUyj03DvO4UaeMl9Hv+lECggxxpT40IHlUFV6CD2Z3k7b/QkMGhXyjS5fRflTFsQE
         FwdKU8HEqQtSkHx53UBVl+k8FrqZOxkN9zbL+PLgDV34ZwJS56+uO11nvZpC2eZYZIvH
         F31H/L5DeyJr7G4tM3mz2k+MVQvMgMWhjPZZdvvaZ+onivI0bmFY1/h1uCZq6x8Uh0ys
         WU2w7oR2rPjGcz+wXTKdvXuCGByw9kb6Y7pRxvjZ86ObiDyQbJLwOGqcb6SAfFBrCrPG
         7EuQ==
X-Forwarded-Encrypted: i=1; AJvYcCWYGKOph0n3Se875gLQwGIH4XeAix3oUAb0G7zYGQ90npsxYIhJpruG1URuxZ9NK1NLdlGm44fyGftv@vger.kernel.org
X-Gm-Message-State: AOJu0YzMDn5/23AAcj4NQyeKR+Lum4MNKZ2Jbw303jEil2nbgpttQaUo
	QZVFaO7vWNBFcdCHrEWKr62PrcQ8n+VxDSCo4LwpA4LWoNvIjuxibjEqsxP/hr/d1O/tR80tR/I
	E0WOqYfYBhPZ2uLH66a1vb6gV7lQY39z/j64thJSy6wxz3ifvmI2WcKiDdEFlv9i7blU6OkSG
X-Gm-Gg: AZuq6aLVk6RmIQfWr5g8K2cmshH5QmA6aTMMavmX3wffy1rrlCTHnB8pegvSBuTQh5P
	8GFwm2C8GD8zJljtB5LHj35wUQO857HcPuGlNu5knaESyChLyNPBGZLIhXtXLiIu7j7dq5kTIjH
	dMTrwjNv15SbGqqwC4mZAwSKblcNNV5ldmyRRS/iNw71jru8FOBZywZinSJ79arbdRnbjrsSDE8
	8mS1OUpnXhOKzS6dHQRUiAScMSUDbxHoPdI9IXNBizrMOV+8W0eAjCmFgi5ALQovUVNV9w/pMmk
	J9SdTfpYg5un2vAB1S7Z60LQ5FFBNsBKiiY23NbkzylEnDn3DZ9+AHCw8k3SCXHnY9dQOhHh+Tz
	kOjD4NbdtcjOPMckD0FLeWQntl0J8rTn7z37zwtpep6LGsw==
X-Received: by 2002:a05:620a:c4d:b0:8c9:f8e5:9efd with SMTP id af79cd13be357-8cb740a674amr285005985a.55.1771434365948;
        Wed, 18 Feb 2026 09:06:05 -0800 (PST)
X-Received: by 2002:a05:620a:c4d:b0:8c9:f8e5:9efd with SMTP id af79cd13be357-8cb740a674amr284998185a.55.1771434365294;
        Wed, 18 Feb 2026 09:06:05 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.140])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4835d994670sm482188845e9.4.2026.02.18.09.06.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 09:06:03 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 18 Feb 2026 18:05:44 +0100
Subject: [PATCH v4 3/4] arm64: dts: qcom: sm8750-mtp: Enable USB headset
 and Type-C accessory mode
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260218-sm8750-display-dts-v4-3-1743e9848864@oss.qualcomm.com>
References: <20260218-sm8750-display-dts-v4-0-1743e9848864@oss.qualcomm.com>
In-Reply-To: <20260218-sm8750-display-dts-v4-0-1743e9848864@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2205;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=eNUPHACdGvd5iZVpi/2IdeMGbrdFYD389Fy9diCrOeI=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBplfFyrd7ln5jH2rf9jeCKViMpfUBDbZq83d29Y
 r8BWgyIdTqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaZXxcgAKCRDBN2bmhouD
 10F/D/41Cl1mVkiiQ2ACyS9t6y92bHGzUCQh583MIDuinzKI3jOHB0WCumdmFJu+h3h3fOpsX1N
 PEQ3yUJOqdPWutoy1UFqThBMv64oo6Yy2Pp1JG/d4QfBrW3Z+0VvlrruuqCVLdw8ZepxuJHtOQw
 w9gaOaLqiyp+hvx5R6mJAh/mBTqJ30nirMUcKJIZeWluXYmboVlgYFzoCJ10oNIsbfZ1tjri+L3
 1Ae7JjuClmYCIvOfUlgDWWiBv3yELxfXOQp7vL75euKM7ZswbznBSELfQ8YsdlVkw/vX2xjZtmH
 rDekSkPJbbNRwS9/DbbrtyPDgHOkuG3ns+NO8inTSgDDgDPBFtBzvBT4M70YssPStJUy4Np83M/
 +hAOn94gPM5r72J9f8yv17ADwsNWuj1SbNgdRuHo9N4Qu2FcyKtGKSAD8xqzi96hIRaLQV+VTGo
 YzeJ+gVgY9OSclNNTk99MLUxEa4KcWzDj1Fao+mHJm8lS++Y4ycnw0HWoN1s5z+BskdYQsNT78Q
 443A7hlIahVTwZNOMKzyvWUpctOBha3p76+MvzgapT6iHFkKhIeobvrVA9gk56ClyVF7grgXdYk
 kGVRI75p6DkSKqhZ9RPTLsJyZNdfVb86hxyJmct1BSpKVWHWecT+JbNuEHhHkSe7qU/vmu2kwFo
 wWdB4iRF2n1YTug==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: 6VRsrul5ZgU_RgezbzxVI8rO2av-uZvV
X-Proofpoint-ORIG-GUID: 6VRsrul5ZgU_RgezbzxVI8rO2av-uZvV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE4MDE0NiBTYWx0ZWRfX7cpA2N/DwEg3
 bWHjl+f0XIUqLq5HNoSnD5iMuCrmKPDf/DhLO+9gIIbf8yF1gXG4iIKXhbiAQcfqsV2U40Idtu/
 Uf7ciW1PnuxhybMdEvF/h6ESsl3dOZZ5hCJJbB5LluV9SNGcC+THeP8GaOnm8VNBH6dbqpbwROV
 Ro4J3APhjyNPX5xk1rYa9RYASwwWraTKYwp7UnMLmctKbVLbB6cZpVWvbOBBOpDJDPiLSqukug/
 sdW/HebfuER9Qog5S0HPKSVMzEKtJIpt+/PONfyjl7GHLNyNTqP8yV6ccw5vHd7+5uZMxfhak68
 /YiPpLv3Ef5NGS+beXcgzhG+BG2hAX5Iaqz4Fy6qCWMtXq3I45O+iUsUxTqH9F6ILscT0TtMfGC
 AujPv7a8kiLjZFlJm4CEYVgUbmtktbc+2ll4hmqu3NIDZxPFlIymTgkaLLdGVx2+RXi66uYNpzW
 jbxFpMTFhLEU6Axcw/A==
X-Authority-Analysis: v=2.4 cv=Q8rfIo2a c=1 sm=1 tr=0 ts=6995f17f cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=6nO30s3o7FuWeffXwhKHTA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=XOJNJb2f72dwbY1LfMsA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-18_03,2026-02-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 clxscore=1015 bulkscore=0 suspectscore=0
 adultscore=0 priorityscore=1501 malwarescore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602180146
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266475-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.2:email,0.0.0.1:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:email,e:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,0.0.0.0:email];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0A21215815D
X-Rspamd-Action: no action

MTP8750 does not have audio jack connected and relies on USB mux
(WCD9395).  Add necessary nodes for proper audio headset support along
with USB Type-C accessory mode and orientation.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 51 +++++++++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
index 050a85df7358..6107a4ed2c80 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
@@ -54,6 +54,15 @@ wcd939x: audio-codec {
 		vdd-px-supply = <&vreg_l2i_1p2>;
 
 		#sound-dai-cells = <1>;
+
+		mode-switch;
+		orientation-switch;
+
+		port {
+			wcd_codec_headset_in: endpoint {
+				remote-endpoint = <&wcd_usbss_headset_out>;
+			};
+		};
 	};
 
 	chosen {
@@ -230,6 +239,7 @@ port@2 {
 					reg = <2>;
 
 					pmic_glink_sbu: endpoint {
+						remote-endpoint = <&wcd_usbss_sbu_mux>;
 					};
 				};
 			};
@@ -925,6 +935,42 @@ vreg_l7n_3p3: ldo7 {
 	};
 };
 
+&i2c3 {
+	status = "okay";
+
+	wcd_usbss: typec-mux@e {
+		compatible = "qcom,wcd9395-usbss", "qcom,wcd9390-usbss";
+		reg = <0xe>;
+
+		vdd-supply = <&vreg_l15b_1p8>;
+		reset-gpios = <&tlmm 152 GPIO_ACTIVE_HIGH>;
+
+		mode-switch;
+		orientation-switch;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				wcd_usbss_sbu_mux: endpoint {
+					remote-endpoint = <&pmic_glink_sbu>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+
+				wcd_usbss_headset_out: endpoint {
+					remote-endpoint = <&wcd_codec_headset_in>;
+				};
+			};
+		};
+	};
+};
+
 &iris {
 	status = "okay";
 };
@@ -1095,6 +1141,11 @@ &pmih0108_eusb2_repeater {
 	status = "okay";
 };
 
+&qup_i2c3_data_clk {
+	/* Use internal I2C pull-up */
+	bias-pull-up = <2200>;
+};
+
 &qupv3_1 {
 	status = "okay";
 };

-- 
2.51.0


