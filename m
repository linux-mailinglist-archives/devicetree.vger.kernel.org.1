Return-Path: <devicetree+bounces-247392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A98ACC776F
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 13:01:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0F4C4301D051
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 12:01:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 986CE33BBD8;
	Wed, 17 Dec 2025 12:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MvLZplYQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Udab3tpy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E96D33BBCB
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:01:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765972881; cv=none; b=AZgJ551gVWSbGiVkW6OLEQ+RYl/Nvamdzbwo3Bq4/eCl5ipa/DMXsVR3rU0DbuHelScel7bNJAsBmKClv31fMc2RmEBFjCQplT2uK6RwYhsOmw1X/w+JP+s6VyuXU+ZRfxW4x5cu8O0JJLfWQ9BoXDXcAsP1xx+GGJqlUwYFxIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765972881; c=relaxed/simple;
	bh=PX+L5WM+WvdyCH4VxcsnHz661zxSSdvXuMaFFouMbos=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZG0E1jyxVmwwKnZls9lXEZBpAV6b/ftVrvkaMBkDeH1DkhtQxAV4kVp+KCxJwXWHNzrnyiRJV3JmC4vCwNeodVLfTJRt8gDD0KD0Sak3jTfhQoMtcBV8PKYT814xK8N24dLy1t4XwBIwF2uFxE6rnB75ng1cVt0xMCKpxNw5F8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MvLZplYQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Udab3tpy; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHAL5Fj1215846
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:01:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=lYRWUTMN/CF
	ugWNOtordU4qRfBsPEyX8n5epXXTxcpA=; b=MvLZplYQOvU6sYUNe/fE4csRZ29
	kXqqqUBJZ6f73S7mx+bdOczF8awLp66Tk67EVKR7FhGPlUqHBimfc2/hRZadmO70
	AT3+0m7SAis2V2gnENucHAEE2Z5dg0VFkJzRluNoWr2Ie47HztyXC8c+SJUdlqdQ
	csc/H8zNI6ebur8LoQ6i1QZhIr8tpXy5w4C+KYNjGNrpkDLRgbvhhZzQJBgX/vHx
	naRrraXA4d2ivGlrOILS42BI52gL8D21FTrWsiDnM//lZAZ5wY/G8ITp4KSDBU6n
	zyILMHsbSRQln58j8q74fR2euVsc1FTAm/Hg4/x768wWjciOa76hx823TTQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3b7g34uq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:01:14 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed74ab4172so119459371cf.1
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 04:01:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765972874; x=1766577674; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lYRWUTMN/CFugWNOtordU4qRfBsPEyX8n5epXXTxcpA=;
        b=Udab3tpyMucZgiizVw5ZWg2DkpHQ1IJ1P14VRUT5lv7PmDc4hPaRsjAfWa3WHhaV7L
         5RGi3+bFy97kHtEyWz46Hyx2iOlVpUAiKYqLRjEvqm0jFGHQ9T3kIUYgniyC7POjmoa1
         WYoJhQj60bvZVjD0CJX4EsqrdR7OAB0GDZ0+9sgGnyRKYphw97fAzS8oaGaz9TkZuBS0
         A4TpJMd1WoR2rqNfwOOZGGfehd/FjpDTNqPyIHXODJjMP4efx+lPCtpVexjhVhGF3khx
         EkHjWjpG7BlCUFzhoo+AfxiHpps5Xwzl9IJkQNaa/kLPsP0mFxznarsx4IH5s2mb3Qjp
         zyaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765972874; x=1766577674;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lYRWUTMN/CFugWNOtordU4qRfBsPEyX8n5epXXTxcpA=;
        b=OwAHoEiMtMMt/JDf3hZrgt41hPRb0CIE/r/oujXL6GLk5guSWcKrm++8hvWo0oxsO0
         c/vLmM4pefqhUnkecA8HOGjn5hfEx8gNZ3KEp6FHTMVBwEqQziCv2L2DU9S5TwksFUCd
         Tq2G8Ag4qdLaYh/tCDetLIxNCZFzkhZR9SPoDG4/dUVOMA7zZmsWcbkk03nfW13gAYRc
         CquomTheCxjlHOxKotInG7POY7xvYYCmfEaBmQlGJaqrKn11/vE8MTXOs+ZPGGxlOGuj
         P0eMDG6IrTO7OP6Dk5jajk2ZM3Lia6fUI6OMSRhYEEzvTxZSiNyz94MUCUOhHUfDOPYq
         SxfQ==
X-Forwarded-Encrypted: i=1; AJvYcCV6If8BLjDoUvBh7jJlpAVYmBM1oh9B7aZuSV79CIxLyAI5z0mYGL7wbaWn3X1cf5GB2SueVxbTc5DR@vger.kernel.org
X-Gm-Message-State: AOJu0YzT0gBpXPNl9txotZZu2ar/oNwF5R+tA5cx/h8Mm3cpxdnOd0bp
	Ln+oFFMr2cIfmwEy53yvnBWt2I72lC+OjjgHU5Er74g+bnpEGxhmUBm5EqSyyCTXH3PpFR1FGuM
	AHhKQOpwt8YEMWiBmUJxMbmyO3QiHTdVuG1bZCYmBTYvLgQ5eODLAXzHDsWy/bREj
X-Gm-Gg: AY/fxX7QMsv43SEpFxfw96GPDDpbA7DlYujk64Km7BqYIp50Cv/KZB6I7obFsTItJx7
	LeUhQTOhldHcDhZa3lLJPiZOJNMh43db1Nm7kFUdoZleM6QMSELjGLukEyf28chkP9SBkvt9MnA
	SUTzlI3/7JQLvHjzELBwpV5IXlF9dd9sKjQ2iH0lIoAHN8/dww7MiVTLnyz3b/a9IM6/dWbuQbC
	vMNgtDTFrionsRZVtEJQbAdUoX9fs5PYdSMd/bTbdpYqguoRnrIyZAlBpcUEi4EJcVb9JzCZ7Hk
	U291zydkm3vRD85tm5CTNtUra7vbjDVKDNhBcVdJiqT1T4Ki7yEaQI6d1xHyeAxQo3pFa4NHWU6
	7AAcGC5WzpTMmVG17OrmnbtRL
X-Received: by 2002:a05:622a:4111:b0:4ec:f410:2470 with SMTP id d75a77b69052e-4f1d05fd4d5mr225626841cf.71.1765972873800;
        Wed, 17 Dec 2025 04:01:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHQI1m2qHZ5HeqRGgibGPpTrBW4BqDUkUQwJ0iqh4hFUy19xPY4ECIyvrO/p4rYRNg1g4TNsw==
X-Received: by 2002:a05:622a:4111:b0:4ec:f410:2470 with SMTP id d75a77b69052e-4f1d05fd4d5mr225626311cf.71.1765972873391;
        Wed, 17 Dec 2025 04:01:13 -0800 (PST)
Received: from quoll ([178.197.218.51])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b800530cfb5sm254826066b.39.2025.12.17.04.01.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 04:01:11 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH v2 2/2] arm64: dts: qcom: x1e78100-t14s: Add audio playback over DisplayPort
Date: Wed, 17 Dec 2025 13:00:53 +0100
Message-ID: <20251217120051.98198-4-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251217120051.98198-3-krzysztof.kozlowski@oss.qualcomm.com>
References: <20251217120051.98198-3-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1854; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=PX+L5WM+WvdyCH4VxcsnHz661zxSSdvXuMaFFouMbos=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpQpt3Lvf/6uLGOS3FMKJb5Iz7yTvdFQJ/O5SEe
 +8DzH6gXNuJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaUKbdwAKCRDBN2bmhouD
 18I7EACXtvc4DUECOyz2tOGwB1kTTbjTbbsA8adGXaA7ytDu1CjHhfkBr3OHrqxfco9u3/iNefz
 ErNKcH3hQX5yn5pFsTQM72Fd8qXW52fByGD9pXBMDxbK6L+7jLRb40gt1NRZFIvDpryBgLrn6cX
 WnFvNDPP0k/+H6q8JyxRCPsVs+4iq8eA12HkG0N3LgOk3H4xcKqvtbW4m1FNwL8hM3xP1iLqhEM
 iSnmPwnTLVBPhc14SBXYmI2dIaWTfqpn0z8L0rWovnV2xq24R6WADDXY/QCL/wFpwCSEskkur6S
 gGv+d43Z57vF12rXyKSdXnaPsu0m7PpMYkFFH6VatNT6GYAgNzdwwseUkIS+ifxNJqD3g8qKBsn
 o/1i18KxmwJ0J23vD3o81ck3q5aM5qXeibbdQr96zJHWWxvc6dL1wYXgDa/HrxSQsA2L1Z1z0Vn
 iOZKH0VKdNUCEwjz9GBXkfQIz0o3TiDrhnpr2rbFddL+4llra3eqC9tCpnytqCtXqyaJqrY1Ykp
 EMKhv4JDd9dWGSa1L+J0xPUTRDR+w+0afVSc81TK1SbfKBqHguxsmMTMtD5T7xWY1WBdZafkZDA
 OFcw/tcTGXI1N0VkfA+FGnaMOset3a4DYbs1ZG9Ru6J6P7eogKtQ7Q3XNQRHpHBUd06DRw+4Y+V naOQ/o7yqON2Viw==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: BtYCtLGl6NbhMf6C4-DffrVd6kjqUBc5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDA5MyBTYWx0ZWRfX0Pws7dr+wHVp
 lyurT0OcxWR6cABhODmL7+SghqE0dZPpIhKVUWpM1bZI3Z4NHDLKCgO3MQ5x350MizyzGmo3XDO
 QRq+N41WdLhf5xhp8X7jXDBwFzFSeeQy5uxzg+A8GPEmsvVlxp858IHbSkNrfNmBnMeantlbkMQ
 M9hfyImMzf/cB/qc1uGfGa+mPpYdlvn4YHdGPKwWkD5uRA0fTi3VwbyUX/IOXp1Q9wtySxhRNVg
 74ZP7IEhXrbAxSxZF7gc6O3RKz4KcAuJCQ+0Amc5xhdP0Om2gb+6U/cjnM1PAgNHGqX9tPv5gD1
 0W1AZkYNJMqTmhf6f9N0455LWRiunmixSEVzq7klBZS2XTu/6VX+4cs474YBkI39v8d4Ym756fo
 aUuMkOfZPYsT+MuYZoH9TNjeBMsWaQ==
X-Proofpoint-GUID: BtYCtLGl6NbhMf6C4-DffrVd6kjqUBc5
X-Authority-Analysis: v=2.4 cv=PbLyRyhd c=1 sm=1 tr=0 ts=69429b8a cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=hmARNUlj3OVxZ3RlbIsQyw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=_cTrUepPJVVRW-beqBoA:9
 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 suspectscore=0 bulkscore=0
 malwarescore=0 clxscore=1015 adultscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170093

Add necessary DAI links and DAI name prefixes to enable audio playback
over USB/DisplayPort and HDMI.  The HDMI port is not yet enabled, but it
should carry respective DAI name prefix regardless.

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

ALSA UCM and audioreach topology will follow up as well.

Changes in v2:
1. Move name prefixes to patch #1
2. Rb tag
---
 .../qcom/x1e78100-lenovo-thinkpad-t14s.dtsi   | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
index 80ece9db875a..7aee9a20c6df 100644
--- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
@@ -351,6 +351,54 @@ sound {
 				"VA DMIC1", "VA MIC BIAS1",
 				"TX SWR_INPUT1", "ADC2_OUTPUT";
 
+		displayport-0-dai-link {
+			link-name = "DisplayPort0 Playback";
+
+			codec {
+				sound-dai = <&mdss_dp0>;
+			};
+
+			cpu {
+				sound-dai = <&q6apmbedai DISPLAY_PORT_RX_0>;
+			};
+
+			platform {
+				sound-dai = <&q6apm>;
+			};
+		};
+
+		displayport-1-dai-link {
+			link-name = "DisplayPort1 Playback";
+
+			codec {
+				sound-dai = <&mdss_dp1>;
+			};
+
+			cpu {
+				sound-dai = <&q6apmbedai DISPLAY_PORT_RX_1>;
+			};
+
+			platform {
+				sound-dai = <&q6apm>;
+			};
+		};
+
+		displayport-2-dai-link {
+			link-name = "DisplayPort2 Playback";
+
+			codec {
+				sound-dai = <&mdss_dp2>;
+			};
+
+			cpu {
+				sound-dai = <&q6apmbedai DISPLAY_PORT_RX_2>;
+			};
+
+			platform {
+				sound-dai = <&q6apm>;
+			};
+		};
+
 		wcd-playback-dai-link {
 			link-name = "WCD Playback";
 
-- 
2.51.0


