Return-Path: <devicetree+bounces-263908-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UI+tMTyoiWk0AQUAu9opvQ
	(envelope-from <devicetree+bounces-263908-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 10:26:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 685D210D885
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 10:26:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B2B303004DCB
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 09:26:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E98B364042;
	Mon,  9 Feb 2026 09:26:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="adrs/rij";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZBGCREnF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38221363C7F
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 09:26:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770629178; cv=none; b=NI6tsv7UuAVk+2sXT5fMcVOWWQ3vlWUKhxkKG50zZhbgo2XUZj59ywKdmf/JVXIKEUlYuzyIQ0nWQddNmWOfPnn9WkYLSno7+k1QMBjabtU/HgkElnznBenODJ++MaaLa0mfzkfOBbPK6437Lb78lRpZ086QRFWIwSbEoZ5sjEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770629178; c=relaxed/simple;
	bh=NSDDzvN4sVICK5kalyl4DaXX24Ug/AkElLXfEx1LyNc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=HRWnSDazkKrUxOVF4jZKm9wG3TmddwYYA7ImJr68HD3w+yenGJZI2mpLx/tF5mEvvsli6eVSLdcRTgBJ1B/uzbBG7et4drpBw3ZQMIn9YeqEetgoi6k7gzZ9Da52/uMhw943LfRAEpy6HkYYgmLSRyrw7axQy2TiYigr3VLI47g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=adrs/rij; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZBGCREnF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6195NabQ2031713
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 09:26:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=Oz4zhM8nUNvmCfbKB+KQXl9NIgA2NhYbqvO
	SqUedN08=; b=adrs/rijFKnFrpYOoKAcW7xq9fGVVEyLNbREQ2gMFyqiC6U1LAU
	v3f5S0nhTeOHtDhu98H3A1veihc3jb9vdkQ3qsY2vH0fPw261EpMWQcWU0no5Glm
	gunfO/+KCjqGWAngcJZb9JwPdyjwzG3X6QuDqmH1fnQsr3yblF5UJsLDA8MwOK6H
	cfJXMG2uj5WyQdSsZgyoPO1/bFLG+qTfUdJgDBVlu3Cb04L5RuLHSJuEsHC7Xn+5
	2Jw2d9T50j2kYMVA6afYaaj4Ul6zFbHG2vJfDBuaF5YJ+VOvHws/YhjM0UyV1qZc
	LX+MNJmWnyE9W8RrtOmXz59v18SNN0Hf9Kw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c79d30tqv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 09:26:17 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8ca3ef536ddso1535950385a.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 01:26:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770629176; x=1771233976; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Oz4zhM8nUNvmCfbKB+KQXl9NIgA2NhYbqvOSqUedN08=;
        b=ZBGCREnFGHw5rShK/GUI54vIt8cg9kXlhC2K//tA/QN6qaH8SQ3Co1ienNz/DH2u2K
         3gewUY7E7M5tTuXQ1JUZYjRi9OHIsYpOEJbKwJdAWimAZwi6b4kOXlxwKpjOI90ydcEO
         rZJYjp2eYBRHZnpOL59yb5kygiOfreohf9W3y4AoNc1XbJ/gSbbwSkG5yJLpfwKdQ4UY
         IE2kCWvDewypT2u1BMC+RSemiSxf4VXa0cjt/N9gX/Kd8giRWzdUiAfZBELtaj8ZXCH8
         ClqJJ76V1QspgZw1nStjUVtOYBpQKjeHRQf5s8D9FbfID0Qgz683hltEnzOyTyjSPCV2
         NbOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770629176; x=1771233976;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Oz4zhM8nUNvmCfbKB+KQXl9NIgA2NhYbqvOSqUedN08=;
        b=Xu15NfDx1zu/oaNpGg4S6pCJ0jbMeQ0smdoZNC+w90TgatRUngwjeLFlz0PjfBuBwW
         BRHRD/gS0yyM6fWTvBY1T+qHF5duZWOYR94h82Mh5P/gppP2qYoFEYj5x6B5BlfnAZk3
         8CoD5e3eOBB8zZz67MvFnshw257CTlFN+rqs6p8237OLq6jlJ8cL22GBAJouOFMGEL1R
         8UMzEDp1R9EcnkZFi7mf0OrqCb12xzePWLAZJZ89cnl1dWNmMtk0KRW9EpOhMl7gLT2V
         cWKFbXYNc/60M+VaZP3FEGc4YOjcEq03L3yCzM/qCMMXS9KDLcHjn6KyK/wxCb3f91id
         9CWw==
X-Forwarded-Encrypted: i=1; AJvYcCW9+T4fTslwPZCSbrbh15S2LP/6XNXhITbZv+27NILUAoG9WHDV4LJmWZp8cmHjlAkhvqT92GIdbszJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yyk9HXKV1sjDbg7ZkgA68VcZKnOpt7eNhporaWWiKXlecP1wBOL
	GoDMIOMrmm8+eT71ww8z/eGOHVN0O7Bc2uCEaTNjG48x0P6aJcy8AOrX4MMmZGedVOOVqZpQaDY
	z5cObXGTL9c0cWObtcf7/nHeAX5DX8P/ZDJzWnuiE6/64oACYyzul3A8rJ2wVTsca
X-Gm-Gg: AZuq6aIJoWLze2qar7hwN9BSC6+Z/jb66FwSJETWotZxR9dSvqNIMkGam5pIWGsNm86
	nj/2JSgW8xSaTC6fh5Mo7brofaGlCdM7DDJjDKzIG/gSQ+ZnyCkd2ftYEVas645OwA+YBcfxDjS
	uUL8UmK8dw42DJklHXN2eG0PLGEkBOGRtDd50XMZmJeJ241BqLiE8WExhDadyMF89QtLfKjnuW+
	D2yYb/1N0te9qNBy7bWN+/Po/QG50jOn/SA1xexH3xLZRyLEvz4e9VsK/lv9gwS8z0des7njYaS
	rWcD06BrdYfVIKCu9rUIzdYaT/SF9kQVgn2qP8s7Us6LLVauJqu3VJu48OXa06PjMIR2L2oElQ7
	vUTsIGDWEw81Te+DAbstNhmTBSA==
X-Received: by 2002:a05:620a:4004:b0:8b2:e666:70d with SMTP id af79cd13be357-8caf0c459dcmr1514317485a.43.1770629176547;
        Mon, 09 Feb 2026 01:26:16 -0800 (PST)
X-Received: by 2002:a05:620a:4004:b0:8b2:e666:70d with SMTP id af79cd13be357-8caf0c459dcmr1514316385a.43.1770629176149;
        Mon, 09 Feb 2026 01:26:16 -0800 (PST)
Received: from quoll ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-436296b2facsm25654044f8f.9.2026.02.09.01.26.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 01:26:15 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH v3] arm64: dts: qcom: x1-crd: add USB DisplayPort audio
Date: Mon,  9 Feb 2026 10:26:08 +0100
Message-ID: <20260209092607.23644-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2196; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=NSDDzvN4sVICK5kalyl4DaXX24Ug/AkElLXfEx1LyNc=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpiagvsonlTKbjI0XQQrnpEVRwW3A4wjT5t1XPN
 KAlVLMxqOGJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaYmoLwAKCRDBN2bmhouD
 1zyVD/9shjOTA4f1CWEuzKaRrbGYfnALTf4QRZYUAllhqsuC0y/5mDHGz7NhX1fwFvHnT5VPba7
 AfAAtqDHXzPFJ2Foyg1LReb7Y5PuwsAsMYXImWPAb9IQl7jSFZdpnBT4Op732Kz4XXRenoPhQvB
 3QQFBXG6BISVJTR68lPrW+QkZsnGAKqVC/QJKGaJyAxjr/n/muN5SMgM9auiILDpK8LU+MLw+Ys
 dqawJV1O8HAIeKHDMskMeJpvSPMkia/Yw62zEmD2EOcJQ2ZKVFX6PBIeZLTYdnvjbhgA1OjyWGH
 PP2tEeRb2oP4ZNXJbpTvYz/grrAUbteub/BFYvkgc570Ng+dD5pZ8dbwxJik/grzsxTMgj13zuD
 +oU0SYMqdtve5BQDdJEjVLpH28URbi3uJ2yDcM0RQhBeAhXhZjVkj1/3fSbV04nq/CgIasWuW3Y
 HZ+/wDj7Jp7VaWaypGrt6dRBFWYmq01ct0knv4q8pq1OG2obeuIinC6sOXsKbQGTA8WVogBLZrG
 eY0kIgrLMdFOUZ2os4ay4K6qFODWUUsWkJGnigX57kWtTaH2fXXHXUQGkPyuvIXHzsL4jBSBdGN
 AvKx0NY2L7BdHXIJmVeEl9ZcB4qKEuSVqFhj9DtSXhGHgkoXKZhB7Ayk0iotUs53YmCld4EUx2u 54yP3pDt7flTrVQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDA3OCBTYWx0ZWRfX7hN1oo9iK3Da
 HbCtwd/pb9/L55+RxdGaO8gXwhtVJTDF4kZeygQvNUO698e2fU30fxsVerpZqcLbIIGynub3x1H
 aoB5rnJwE/E7Y+cFLUmiErALGiOc9pxEoiP8wTxkSahpKudbDYeZGhwClS/ejQBNxzKUU9A3kzN
 BP8GXdhaPCoiYVhRKuPsXDyv3Z9N2MkN6M49wSPEsa9AlsQSYAuKLl8ylPLsQAmJcw49Nubg3XL
 yuIdjv6xbpfM1HF3UlO4km/YAJGYPioCXBxnZ89hggvCepmqBPHLR2X0hhSyZ2YfAR8AGnuKZjS
 cNlPhsCT32mMOI2J7Lk2T/bE2l666O+1KfcBFXVoH6/IORz4sQGz++B5nlOG6wGlqTbVwRJ1p7F
 m29+8OkjjR4JciagH8vW8EYMHt4L4qpmnDkWC1w8nVRI0timQSTxPJemECuTeUDw9xN4AZY8RsH
 CLPQUUAAgSetLS1qa4w==
X-Proofpoint-ORIG-GUID: c8RTzOFLszEcUd2eOvREfevrEGLS2yKe
X-Authority-Analysis: v=2.4 cv=GJAF0+NK c=1 sm=1 tr=0 ts=6989a839 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=bC-a23v3AAAA:8
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=6ODwBvgpoHaQwxifY08A:9
 a=NFOGd7dJGGMPyQGDc5-O:22 a=FO4_E8m0qiDe52t0p3_H:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: c8RTzOFLszEcUd2eOvREfevrEGLS2yKe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 phishscore=0 adultscore=0 suspectscore=0
 bulkscore=0 priorityscore=1501 impostorscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090078
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263908-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linaro.org:email,msgid.link:url];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-0.996];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 685D210D885
X-Rspamd-Action: no action

Add support for playing audio over USB DisplayPort (the two left USB-C
ports on the CRD device).

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Answering comments:
1. No clue about third port. I do not have a reliable working CRD
   device, so I cannot test it. I add what I tested.

2. Topology and Alsa UCM were merged long time ago, so btw without this
   patch CRD is negativelly affected or even broken (ALSA tries to
   configure non-existing DAI links)...

Can finally this be applied after a year?

Changes since v2:
1. Rebase - sound-name-prefix are now part of DTSI.
v2: https://patch.msgid.link/20250624122933.54776-2-krzysztof.kozlowski@linaro.org

Changes since v1:
1. Rebase (x1-crd.dtsi appeared)
2. Re-order cpu/codec
3. Add blank line before status for mdss_dp
4. Tags
---
 arch/arm64/boot/dts/qcom/x1-crd.dtsi | 36 ++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1-crd.dtsi b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
index ded96fb43489..9e43b48496f2 100644
--- a/arch/arm64/boot/dts/qcom/x1-crd.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
@@ -226,6 +226,38 @@ sound {
 				"VA DMIC3", "MIC BIAS1",
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
 		wcd-playback-dai-link {
 			link-name = "WCD Playback";
 
@@ -1152,6 +1184,8 @@ &mdss {
 };
 
 &mdss_dp0 {
+	sound-name-prefix = "DisplayPort0";
+
 	status = "okay";
 };
 
@@ -1160,6 +1194,8 @@ &mdss_dp0_out {
 };
 
 &mdss_dp1 {
+	sound-name-prefix = "DisplayPort1";
+
 	status = "okay";
 };
 
-- 
2.51.0


