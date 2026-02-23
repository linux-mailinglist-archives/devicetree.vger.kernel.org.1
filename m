Return-Path: <devicetree+bounces-267432-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OMNCAx5anGmzEgQAu9opvQ
	(envelope-from <devicetree+bounces-267432-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:46:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 63286177322
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:46:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0F9BC306B4D6
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 13:40:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2051C21CFF6;
	Mon, 23 Feb 2026 13:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MXPAkUs3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="cc6foyil"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C26A425A2BB
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 13:40:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771854033; cv=none; b=I05oUgsKgvNDKbcCT6A577p77hnqOJr5w955vjxw8/3AODOqy6WT5e9p5Yy8MhB/58okoyYedAvTk1pEcsyVEb2NTvW7Ef62H0wDcyyDA0jE2Q0Ty2IxwOHjoXvLXaRKvuz3hlfUfQDbanUHvLhoWgYmZVKy/m+vShW9//rn5zE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771854033; c=relaxed/simple;
	bh=/GUdn0GZb/bFH2+Fzxbpy+HSrYEjuVkqs/bHseXM73k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=WPCR5wAKv8LxjmY0UBTKFEo3SOZ1ESdNyEGQuzLGMqrfrqTJyaqd/w8tyR0O9Pp6hHYA9KLx9NpM3ElmfAlCIJUZWyWT9jkhxC3rNP27QM+bcEzr5WW/lZ/my0CakUFAs4Q9EDVBb6AoN2qjdAecYcBQwOwVnLPtAvGp1MchlF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MXPAkUs3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=cc6foyil; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NAaJ522169796
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 13:40:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=/3QwVrE3Eva
	bkesLgBI2hGlUahrRvraAziHZ5pznDIo=; b=MXPAkUs3+WNOUJ06M0aAQrWsrYM
	Pe6a0UAJxdpr8pBbIKli+P+6f9Ed87NQwJZU1/6s8veP6ysZHEBORA6Kd8sJey9n
	twWG3yD7UQSY8+a0WTsM0tPfxg3A+17+7aaxorUZtlaN6OsFjseJkAHR3S15n9Ty
	6GKuzHWcFbx5vMMGnCiE6tSNd8s+nQqYbcvPwkbxMlvJ346gQHPb/UUfOhxMcf/D
	W7JqFs58F6nI1W9ENY8w2Q5mVHGaxI7ZE/fxfkKWS19UQI+GZVUaHNSUhI/Ez/VP
	LISt6lxHgss1nbyH+txZY61dYzl5ZNoIu+MMK7X5cYnnFnRHxRChpQ6DUeA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5wavwe5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 13:40:11 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb4a241582so4002231285a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 05:40:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771854009; x=1772458809; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/3QwVrE3EvabkesLgBI2hGlUahrRvraAziHZ5pznDIo=;
        b=cc6foyiluBHo8590gs+XhDYDdB+bpV9IAlSxeNyufq6YFVhhdUCVw0TdFnOkO3+9A1
         hXZ7WDycZykJ559XXh35uGGdnvcsGTocipiVCj8cDZFEoiEHHztQ6zlxsYjz2kt9QbhT
         BHq4EHOa6RMMkMTnVMaPzvRMfYzV/kiNQMSP8a6yPUq6cezmNUsy3PSeNPllYAjIvxUo
         t9jOlqGAO8XCwjpWZfteyaVhNApz+hnu+LrKDAI4uZn/T2Tuz2Xt86aEjLgSQng+APpQ
         LPg7K0xgXm1vFb3tATe8hqJoWMqWjKFBbpbdMFDcdd+E5bMnMqv3C05nT3WyvRNYAOTU
         rbfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771854009; x=1772458809;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/3QwVrE3EvabkesLgBI2hGlUahrRvraAziHZ5pznDIo=;
        b=vZNPoslQPYDOriz2JXm9rMq/tjwgbMLOyUS5OGWLRlUDBsXsDZLfOiaF7uoOET5V6f
         fzEkRQ1aezaLeDcKa+luwl9y01nmziHnNyRtzS4Qov//EbWIHfZtG0MZB1PkNAytBdBQ
         Q3UN/UwPZPjzNjodojPlzz/UDnt7C0q6DFLSYFrq/R9VefN2cwxoYSlE0ZM+1nw9gMjO
         yuVIqrubjQUg57o5YUIHTAe/pjQXJkLEL+oOwA7nhRPiMrUSM/SUXQzh55MyI5HCyyed
         0KLCViDmz0fwjQz1RlyEvsW29lCfdP7cNnwpZ+iQvd5kTyuo/j+9fGjVgHgG0fc04Vu8
         GFQQ==
X-Forwarded-Encrypted: i=1; AJvYcCXipge5EObUitTSW8G/3QNYAs/Yl3Bsz+bCOBu2R46q66CLTK1aMGoLK00lyU4t/p8RiuCfCiht6N7e@vger.kernel.org
X-Gm-Message-State: AOJu0YyCua4b4ztaLr0XAKvma7QWYo8+lX3ZdXhO5YFFv85jr3imSunn
	o0/cAyeFnktAxHGX/ritH/CXk9GaFBonsMwaFDpfNs9U9uEgciyUycFSi1LWl9pAHMGerDwYTwE
	OAf25R4oO+B1Kq/pFCpvzw2uDtyaXj5Z3yPjonPDisQkFF/7qQA7DQiu3FRu3h2RB
X-Gm-Gg: AZuq6aLPKIDu/MVapyKK4B54Z3b/c+QxwxrwIc/QGHCjXF1t7o9XFtVZw/UyazOQLUI
	F6GwsmkGk+vtZF1KMmBuGgub3nEsBTUXw8XYeHaSEoiuw8qW3Xha0WM7u00UqbcLThq+AVYNDb2
	RFi3WvgeGhrjmYvd6B5nnLi5Hm3dnfAjU6TNlEE7jN2PvhGg5YsDJ0Ja8yYJxhy94qG3jhFzkPS
	EXpsuLYedHzqczdCHgIiI1NSWB1mEktGsmuYccyw+isGVarERwjxWL+JIxfDQz3A2Wn4jYh8SIM
	7wZbPYWmfSIZeW8MN7tbrojvFGrsiS6vFCjrfryOUvwWKWQDOO2eQgjJQMi5GZK3HudVwW3pu1h
	tAqvfCLsrflxRb7kZ9EhOdMvTRQJOUNDW57HqqQitCQMiG977mw0hdLI=
X-Received: by 2002:a05:620a:2911:b0:8cb:4a64:f482 with SMTP id af79cd13be357-8cb8c9ec06cmr1140384285a.18.1771854008992;
        Mon, 23 Feb 2026 05:40:08 -0800 (PST)
X-Received: by 2002:a05:620a:2911:b0:8cb:4a64:f482 with SMTP id af79cd13be357-8cb8c9ec06cmr1140380385a.18.1771854008520;
        Mon, 23 Feb 2026 05:40:08 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d4c626sm21323985f8f.28.2026.02.23.05.40.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 05:40:08 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: lee@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, sboyd@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alexey.klimov@linaro.org,
        r.mereu@arduino.cc, srini@kenrel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v2 4/5] arm64: dts: arduino-imola: add support for sound
Date: Mon, 23 Feb 2026 13:39:49 +0000
Message-ID: <20260223133950.221234-5-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260223133950.221234-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20260223133950.221234-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=KJVXzVFo c=1 sm=1 tr=0 ts=699c58bb cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=LNtkodg__a2-xnBQD9gA:9 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDExNyBTYWx0ZWRfXyMHC7zo43QL5
 yCLKbQvPA7A2RwYJMJszmTxdRcF13kbEc1aa6EuTkDyMIlOk0mCz7FD4cVfd24zjjrxwnUG9C+3
 cPLjNFVJW1LSGCcDseDXPG8zFHv7Yc/VPgmll9ltSPioh6LmGv9JTTxtXwT7ZK0zaSFmNMXuKCe
 rzBaBJrDslScN95GWd9NDPjzlo9MCCa7Q3oUUDOHeJQWtpay4T3XLZM7Q4UtmZOVFDmPq0DxbWK
 oXe8czDSD7V4p7mC48wa/oKkZGsdYcS1c2S0/9GjoN5H0nwH2+aybd5aJ8mbukjMsw+CpikxO5z
 yE8VNlLH8W4zHLv7f0THzBylunk4yWNK23UNSyeytof2FTnTuWawo4oClI1hR+RopqVH9QfB+0l
 Q0+TSHHtlbM4vddYAqAJdNXZTw2F7H6mmZRlRUpo+4c+ADWBXSwkBbL7/QGY15wdiB5+HXMBJpk
 mkYS4tLjliHGw3JX1tw==
X-Proofpoint-ORIG-GUID: IYByNiSpPhijadzxsSPs2ozb_m9SjZdo
X-Proofpoint-GUID: IYByNiSpPhijadzxsSPs2ozb_m9SjZdo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_02,2026-02-23_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 clxscore=1015 spamscore=0 malwarescore=0 adultscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602230117
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267432-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.0.0.0:email,qualcomm.com:email,qualcomm.com:dkim,f000:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 63286177322
X-Rspamd-Action: no action

Add support for sound on Arduino UNO Q board, which includes
- Headset playback and record.
- Lineout

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 .../boot/dts/qcom/qrb2210-arduino-imola.dts   | 138 ++++++++++++++++++
 1 file changed, 138 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts b/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts
index 197ab6eb1666..53745684ead4 100644
--- a/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts
+++ b/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts
@@ -109,6 +109,101 @@ multi-led {
 		leds = <&ledr>, <&ledg>, <&ledb>;
 	};
 
+	sound {
+		compatible = "qcom,qrb2210-sndcard";
+		model = "Arduino-Imola-HPH-LOUT";
+		audio-routing =	"IN1_HPHL", "HPHL_OUT",
+				"IN2_HPHR", "HPHR_OUT",
+				"AMIC2", "MIC BIAS2";
+
+		mm1-dai-link {
+			link-name = "MultiMedia1";
+
+			cpu {
+				sound-dai = <&q6asmdai MSM_FRONTEND_DAI_MULTIMEDIA1>;
+			};
+		};
+
+		mm2-dai-link {
+			link-name = "MultiMedia2";
+
+			cpu {
+				sound-dai = <&q6asmdai MSM_FRONTEND_DAI_MULTIMEDIA2>;
+			};
+		};
+
+		mm3-dai-link {
+			link-name = "MultiMedia3";
+
+			cpu {
+				sound-dai = <&q6asmdai  MSM_FRONTEND_DAI_MULTIMEDIA3>;
+			};
+		};
+
+		hph-playback-dai-link {
+			link-name = "Headphones Playback";
+
+			cpu {
+				sound-dai = <&q6afedai RX_CODEC_DMA_RX_0>;
+			};
+
+			platform {
+				sound-dai = <&q6routing>;
+			};
+
+			codec {
+				sound-dai = <&pmic4125_codec 0>, <&swr1 0>, <&rxmacro 0>;
+			};
+		};
+
+		lo-playback-dai-link {
+			link-name = "LineOut Playback";
+
+			cpu {
+				sound-dai = <&q6afedai RX_CODEC_DMA_RX_0>;
+			};
+
+			platform {
+				sound-dai = <&q6routing>;
+			};
+
+			codec {
+				sound-dai = <&pmic4125_codec 0>, <&swr1 0>, <&rxmacro 0>;
+			};
+		};
+
+		ear-playback-dai-link {
+			link-name = "EarOut Playback";
+
+			cpu {
+				sound-dai = <&q6afedai RX_CODEC_DMA_RX_0>;
+			};
+
+			platform {
+				sound-dai = <&q6routing>;
+			};
+
+			codec {
+				sound-dai = <&pmic4125_codec 0>, <&swr1 0>, <&rxmacro 0>;
+			};
+		};
+
+		hph-capture-dai-link {
+			link-name = "Headphones Capture";
+			cpu {
+				sound-dai = <&q6afedai TX_CODEC_DMA_TX_3>;
+			};
+
+			platform {
+				sound-dai = <&q6routing>;
+			};
+
+			codec {
+				sound-dai = <&pmic4125_codec 1>, <&swr0 0>, <&txmacro 0>;
+			};
+		};
+	};
+
 	/* PM4125 charger out, supplied by VBAT */
 	vph_pwr: regulator-vph-pwr {
 		compatible = "regulator-fixed";
@@ -333,6 +428,49 @@ spidev@0 {
 	};
 };
 
+&spmi_bus {
+	pmic@0 {
+		pmic4125_codec: audio-codec@f000{
+			compatible = "qcom,pm4125-codec";
+			reg =<0xf000>;
+			vdd-io-supply = <&pm4125_l15>;
+			vdd-cp-supply = <&pm4125_s4>;
+			vdd-pa-vpos-supply = <&pm4125_s4>;
+
+			vdd-mic-bias-supply = <&pm4125_l22>;
+			qcom,micbias1-microvolt = <1800000>;
+			qcom,micbias2-microvolt = <1800000>;
+			qcom,micbias3-microvolt = <1800000>;
+
+			qcom,rx-device = <&pm4125_rx>;
+			qcom,tx-device = <&pm4125_tx>;
+			#sound-dai-cells = <1>;
+		};
+	};
+};
+
+&swr0 {
+	pinctrl-0 = <&lpass_tx_swr_active>;
+	pinctrl-names = "default";
+
+	pm4125_tx: codec@0,3 {
+		compatible = "sdw20217010c00";
+		reg = <0 3>;
+		qcom,tx-port-mapping = <1 1 2 3>;
+	};
+};
+
+&swr1 {
+	pinctrl-0 = <&lpass_rx_swr_active>;
+	pinctrl-names = "default";
+
+	pm4125_rx: codec@0,4 {
+		compatible = "sdw20217010c00";
+		reg = <0 4>;
+		qcom,rx-port-mapping = <1 2 3 4 5>;
+	};
+};
+
 &tlmm {
 	spidev_cs: spidev-cs-state {
 		pins = "gpio17";
-- 
2.47.3


