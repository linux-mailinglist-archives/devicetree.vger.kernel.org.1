Return-Path: <devicetree+bounces-261427-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mID6BbgKfmkrVAIAu9opvQ
	(envelope-from <devicetree+bounces-261427-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 14:59:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 56139C21E8
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 14:59:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C0214300620A
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 13:59:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62AD8355804;
	Sat, 31 Jan 2026 13:58:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Qf2iQrEd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="I9Zq6Uso"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5003542EF
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 13:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769867939; cv=none; b=FyGeHTQPxA75fJI3r6AUbpvJaRFb9BzvfkvtQwwkmpp4xcudB1SfhaVn7FFbr8riNcNRj88FErjV5IyVMW1BMyRToPdlrpm1LK7R7TCxsD//fW0NDqyT9q7t3SFhh/zQudtEB71UBMnsvU6A+nFAZE4o0JqoKPfU4MCC/jSTEqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769867939; c=relaxed/simple;
	bh=IbBe+qPzL/JW2ROcb8V9haTlv7c+yK1yAHzmxUuMoI4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=LpiRYWV+brJkAS4UeF9D3OV4Cy9ScEB1o5k5bPdh5rIpqevk+0AL0cb0MNMSkEluB0/MS68sVTK7fZg3V+9gt4oUvvL4yf7ObYMg6M/HDbO4lyMUr3o1NdCtx9WTWhSCw8KePafpHBHC65EdtGCVEUepai0fAdTIBmxOAMRp5Qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Qf2iQrEd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=I9Zq6Uso; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60V4YsFd658581
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 13:58:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=gWzTVG2Er8cPlMebJz+BOz
	AjlmkSqf6/LYTyc/ntxAU=; b=Qf2iQrEd4mrOKFos1zXVQynr7PZkoZTJWVo3U/
	DqgGi0enc5CIHKFNyqLT9faCGx47pHnmlYaKH+RX4tKQFqE+An7Sj0eBE7aIDAbk
	wuQBbAm/bgdl2TXt11HHA4Z2gNKPOlLcvXMr8g3MXwaCEfNh/42ywpQhfKJHLV8i
	/+M5Z1gT+N04mi49QGA4MOWjN3DYL9uJ+r/qMGtmbe8V8Kl8KrkzoS+2KDJRepCQ
	WNk1ZgQSj88Lod55OOK0yiUNsRELbcwUj/ptPBiKFwGQOxLsKyZD1eWl3tLxi/q6
	nCcIUaXJRGBAzyzmnyiiJHZaT7HidVoo/LWGmr7ntGLC3dnQ==
Received: from mail-ua1-f69.google.com (mail-ua1-f69.google.com [209.85.222.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1au2gur9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 13:58:55 +0000 (GMT)
Received: by mail-ua1-f69.google.com with SMTP id a1e0cc1a2514c-9483e4a8662so4411194241.3
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 05:58:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769867934; x=1770472734; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gWzTVG2Er8cPlMebJz+BOzAjlmkSqf6/LYTyc/ntxAU=;
        b=I9Zq6Usog5Y7siOmM81g7fIHHlqhciNQTnvcxg02jSUxQLY507ELBRQ4dr02a/eeUg
         MjWniIHQfVQFi/Zm3fMBnffXN+p3NCliCPnsaDixho8f7kZh0N5l+mzS7ML9HjMcnCKy
         jAPooOkDG16O1GEuwFBvL5pXbhWsdQg3uGZYeev982BWTB6fnkECtNQTNvaFtt5SCMn+
         VVZ0GOunot0GHN1m1TKMM2p8HZ0PYNm69L4lLYLWSQJ7WTesTbhaBqem87J73q9gJLFd
         vLUcvuSlyqwdALUvOBPl5NE8CUTdcn+oXOmd9uIMSwZtl5s4pRbdqHNYu7olxxwfkKKE
         LAxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769867934; x=1770472734;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gWzTVG2Er8cPlMebJz+BOzAjlmkSqf6/LYTyc/ntxAU=;
        b=hL3l5siLTb0gO3OD3sbcdooAReYkBxYm1mzY7eIwOT67EHEEI6yBJYrpvba6NVuwBj
         8Avyvu1eJ870qgMrLRPj3IL/x6IRJYomHQ+dzSSTq+Ufi8tZmZL5HsGTjUJYoiaQoOjb
         6lCRbbjSxPX1gv7yQ1LFNE7fsLUDf6EEHOPOuW/UJCSrs+haqCPJXIltOkqrS59TH6va
         3LF++MJCBiglPsDFueuXG7VlnhT6BKJcOViixsxqBCjB/wXWTaqqfNrLMRe60wz61aMo
         HpYJJUtqNUTKVOyVUpOXMEhyX57LjCaYIpXdjSowIEvMG/sV9L8OOXcE1igEuIROsdFs
         WSGQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLD8Q7WcCF0wln0qEPHUGV1x1ysCli0hbF/sWBNBiNAWup7n81WhzWv9Pj0RJ5OrnXKbaIbpWfApQ1@vger.kernel.org
X-Gm-Message-State: AOJu0YyJtBTsmlrua4NMzOZesIp0KaH2l5Ttbemw9+RLURTER1307MwV
	VbhjIYLtnJlI04ffxylDHnpTVmXYa1YgScLpTl4pbQfHHBcslgoPmAESDAkCXZFtCIc5DC5tj1W
	Wmf/h2Hd2hoc8FUxisjq9lYmntimlOJCmPPjY7INawMzStgk3zNvQzGVG8GdU26I1
X-Gm-Gg: AZuq6aJ0GhFVvNsM4/aLx9wFuDx1hCAwpaqEN6szDZRDN9/ssHOcLjh8fyi99x/nWuB
	QeQiEXfQXxxzQp9ugbzBNW7zm65Q0WyoKYzuGxSfVqHlZRlZYqZr7jdg1UwNAmmpBH6v52xyA+t
	mBcM1zoDrxjuWbPhs2Wii6vWJ3r5vSKFSwuK66u8Xt2Ke3fh9cUUo9WOKVeb2CKKSk6WQK7oLiW
	5r3U6hisLf6UC9Y05/7ON0jWnGo5eAvrpUcBeod1jBid/8R+uGCvMrLMpuBr2VoIF3tpdOO6pNM
	8Jbxhb33EtjgQm61bA3Pb9exsPb9ndmwGaYzaVNvUWVvFwhAeYk3rNXaedEHuFUMei4/5r30SHF
	3Hx/ov3zWgFtolMcMrVcsgMfvZpqgRJ/vYbZWHkeLRbbxnas4fHIb1f9qb0qeJ8fJ54N6WBGW7g
	qr1aLUB1xrS3ABzESLFQJN0eg=
X-Received: by 2002:a05:6102:2920:b0:5f5:2e63:f571 with SMTP id ada2fe7eead31-5f8e24e04f3mr1975540137.19.1769867933909;
        Sat, 31 Jan 2026 05:58:53 -0800 (PST)
X-Received: by 2002:a05:6102:2920:b0:5f5:2e63:f571 with SMTP id ada2fe7eead31-5f8e24e04f3mr1975524137.19.1769867933385;
        Sat, 31 Jan 2026 05:58:53 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e074b2dddsm2373021e87.61.2026.01.31.05.58.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Jan 2026 05:58:52 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v4 0/5] media: qcom: flip the switch between Venus and Iris
 drivers
Date: Sat, 31 Jan 2026 15:58:49 +0200
Message-Id: <20260131-venus-iris-flip-switch-v4-0-e10b886771e1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJkKfmkC/4XQwW7CMAwG4Fepcp5Zk7Qp4cR7TByS4qyWaAtx2
 oEQ774UNGmHVbtE+iP7s/TfBWMkZLEr7iLiTEzjkEP1Voi2c8MnAh1zFqpUtZTSwozDxECRGMK
 JzsBflNoOjrV1OvjWuMqLvHyOGOj6hD8OOXfEaYy3551ZLr//krMECdtaaWODMajNfmTeXCZ3a
 se+3+RHLPKsfjRTSmVWNQUl+BJdWaNstHUrmv6tNauazloTdGO2NlRe2z+0x6uGiJcp15peXQj
 vGGEZorQrBrym995xwpjnH99EsESgjgEAAA==
X-Change-ID: 20251119-venus-iris-flip-switch-d59a3fbc6a4b
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        Douglas Anderson <dianders@chromium.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=13797;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=IbBe+qPzL/JW2ROcb8V9haTlv7c+yK1yAHzmxUuMoI4=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpfgqbLiPmmBKGRK2U4qZWY12ph+L7MKr+uzO1t
 tr0fXNQn6KJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaX4KmwAKCRCLPIo+Aiko
 1YNPCACAlK/+nkOO500FTZiunhnM+iEnzQp7JRXQ93t5FnM4ZstCZaHKIAvX0o3+oba9dhSQJo6
 eM9tfB7eqmetWUhc1TWUu0bygcpstIDly5l43rLCq+/t4vo/4Y9vMyZnL+y7SycHDa3X9iATyez
 waFKcj/cSqbsfOqSHYkcjN+c2O0R1/9czVlG6ui4r9xLUdJDYfmpFNxNFkNiQMK8NBOR5Y3T3FU
 b68b7E71q4WZon4PbmNlDnyCAeV6RKNoe3K+0FnwjrnwhJfJVaLZnRmv1yhTmgbuY+s1YOFXehN
 pcUajVAGF8VC8p99eCUhIesUbAUbD5ArTFwu3zxvjqasBOg5
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: WjH41q4L2m9CEOv8d0kWEsjdnnGFZQHr
X-Authority-Analysis: v=2.4 cv=TtfrRTXh c=1 sm=1 tr=0 ts=697e0a9f cx=c_pps
 a=UbhLPJ621ZpgOD2l3yZY1w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=dCW-8o_xTGPffEoVNk8A:9 a=QEXdDO2ut3YA:10
 a=TOPH6uDL9cOC6tEoww4z:22
X-Proofpoint-GUID: WjH41q4L2m9CEOv8d0kWEsjdnnGFZQHr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMxMDExNyBTYWx0ZWRfXx9c8Coe7GtIl
 wEpBRG76DQrP2gY2r6GSyIlpIo9IZx1+ejSmXqkuUfTitJPxHDO4IfWlsD77+9wLY1mr2AB9Yjh
 ISRdD44UA3fFmzoXGw0MxzSActb7YmcfwiFys6R2V4I6qPWK4RC2yPaiFzit000mYKmx4VYHacP
 4vZLMOGBOGJfwb4NLZEYPDAI+Rk4ASEnqekv3kLdAVOc8uORNbmrRgeUKsbfoAP4X6FZEs/llW6
 avnHYTLMuv3fRCHHN/7uvQGJuibdt/w1eoxTyGkeIzUfyrAXieHW/Ov/PBELRF9OGTJiR96q77P
 N8a3t9twqDPzkjZy3ULbzFcjVr1S/7X9j/qjvB9fhQkBRwGbpCsld+vFuBT7JfJ294bEybdOMmw
 s++nIWi622vRPc6q0XOf62BHX5QTl7PFiYi+9/35Mkh4OiKtKEHF5e7c8C8CpVM53mUn/y4WzfG
 efafZj1il+T/Bhmsmhg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-31_02,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 clxscore=1015 bulkscore=0
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 adultscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601310117
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[bounces-261427-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[out-h265.md:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,out-vp9.md:url,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 56139C21E8
X-Rspamd-Action: no action

As the Venus and Iris drivers are close to the "feature parity" for the
common platforms (SC7280, SM8250), in order to get more attention to
squashing bugs from the Iris driver, flip the switch and default to the
Iris driver if both are enabled. The Iris driver has several
regressions, but hopefully they can be fixed through the development
cycle by the respective team. Also it is better to fail the test than
crash the device (which Venus driver does a lot).

Note: then intention is to land this in 6.21, which might let us to
drop those platforms from the Venus driver in 6.22+.

Testing methodology: fluster test-suite, single-threaded mode, SM8250
device (RB5).

$ ./fluster.py r -j 1 -d  GStreamer-H.264-V4L2-Gst1.0 -s -so out-h264.md -ts JVT-AVC_V1
$ ./fluster.py r -j 1 -d  GStreamer-H.265-V4L2-Gst1.0 -s -so out-h265.md -ts JCT-VC-HEVC_V1
$ ./fluster.py r -j 1 -d  GStreamer-VP9-V4L2-Gst1.0 -s -so out-vp9.md

For H.264:

Only the main set was used on both platforms

On Venus pass 126/135
On Iris  pass 78/135

- Fail on Iris, but pass on Venus:
  cabac_mot_fld0_full, cabac_mot_mbaff0_full, cabac_mot_picaff0_full,
  CAFI1_SVA_C, CAMA1_Sony_C, cama1_vtc_c, cama2_vtc_b, cama3_vtc_b,
  CAMACI3_Sony_C, CAMASL3_Sony_B, CAMP_MOT_MBAFF_L30,
  CAMP_MOT_MBAFF_L31, CANLMA2_Sony_C, CANLMA3_Sony_C,
  cavlc_mot_fld0_full_B, cavlc_mot_mbaff0_full_B,
  cavlc_mot_picaff0_full_B, CVCANLMA2_Sony_C, CVFI1_Sony_D, CVFI1_SVA_C,
  CVFI2_Sony_H, CVFI2_SVA_C, CVMA1_Sony_D, CVMAPAQP3_Sony_E,
  CVMAQP2_Sony_G, CVMAQP3_Sony_D, CVMP_MOT_FLD_L30_B,
  CVMP_MOT_FRM_L31_B, CVNLFI1_Sony_C, CVNLFI2_Sony_H, FI1_Sony_E,
  MR9_BT_B, Sharp_MP_Field_1_B, Sharp_MP_Field_2_B, Sharp_MP_Field_3_B,
  Sharp_MP_PAFF_1r2, Sharp_MP_PAFF_2r

- Fail on Venus, but pass on Iris:
  BA3_SVA_C

For Venus several tests crash the firmware or crash the device,
so test-suite was executed with extra:

-sv CABREF3_Sand_D CAMANL1_TOSHIBA_B CAMA1_TOSHIBA_B \
  CAMA3_Sand_E CAMANL2_TOSHIBA_B CAMANL3_Sand_E CAPA1_TOSHIBA_B \
  CAPAMA3_Sand_F CVMA1_TOSHIBA_B CVMANL1_TOSHIBA_B CVMANL2_TOSHIBA_B \
  CVPA1_TOSHIBA_B

For H.265:

Only the main set was used on both platforms

On Venus pass 135/147
On Iris  pass 133/147

- Fail on Iris, but pass on Venus:
  INITQP_B_Main10_Sony_1, WP_A_MAIN10_Toshiba_3,
  WPP_A_ericsson_MAIN10_2, WPP_B_ericsson_MAIN10_2,
  WPP_C_ericsson_MAIN10_2, WPP_E_ericsson_MAIN10_2,
  WPP_F_ericsson_MAIN10_2

- Fail on Venus, but pass on Iris:
  ipcm_A_NEC_3, ipcm_B_NEC_3, ipcm_C_NEC_3, ipcm_D_NEC_3, ipcm_E_NEC_2,
  IPRED_B_Nokia_3, VPSSPSPPS_A_MainConcept_1

For VP9 codec:

On Venus pass 174/311
On Iris  pass 232/311

- Fail on Venus, but pass on Iris:
  vp90-2-05-resize.ivf, vp90-2-14-resize-10frames-fp-tiles-1-2-4-8,
  vp90-2-14-resize-10frames-fp-tiles-1-2,
  vp90-2-14-resize-10frames-fp-tiles-1-4,
  vp90-2-14-resize-10frames-fp-tiles-1-8,
  vp90-2-14-resize-10frames-fp-tiles-2-1,
  vp90-2-14-resize-10frames-fp-tiles-2-4,
  vp90-2-14-resize-10frames-fp-tiles-2-8,
  vp90-2-14-resize-10frames-fp-tiles-4-1,
  vp90-2-14-resize-10frames-fp-tiles-4-2,
  vp90-2-14-resize-10frames-fp-tiles-4-8,
  vp90-2-14-resize-10frames-fp-tiles-8-1,
  vp90-2-14-resize-10frames-fp-tiles-8-2,
  vp90-2-14-resize-10frames-fp-tiles-8-4-2-1,
  vp90-2-14-resize-10frames-fp-tiles-8-4, vp90-2-14-resize-fp-tiles-1-16,
  vp90-2-14-resize-fp-tiles-1-2-4-8-16, vp90-2-14-resize-fp-tiles-1-2,
  vp90-2-14-resize-fp-tiles-1-4, vp90-2-14-resize-fp-tiles-16-1,
  vp90-2-14-resize-fp-tiles-16-2, vp90-2-14-resize-fp-tiles-16-4,
  vp90-2-14-resize-fp-tiles-16-8-4-2-1, vp90-2-14-resize-fp-tiles-16-8,
  vp90-2-14-resize-fp-tiles-1-8, vp90-2-14-resize-fp-tiles-2-16,
  vp90-2-14-resize-fp-tiles-2-1, vp90-2-14-resize-fp-tiles-2-4,
  vp90-2-14-resize-fp-tiles-2-8, vp90-2-14-resize-fp-tiles-4-16,
  vp90-2-14-resize-fp-tiles-4-1, vp90-2-14-resize-fp-tiles-4-2,
  vp90-2-14-resize-fp-tiles-4-8, vp90-2-14-resize-fp-tiles-8-16,
  vp90-2-14-resize-fp-tiles-8-1, vp90-2-14-resize-fp-tiles-8-2,
  vp90-2-14-resize-fp-tiles-8-4, vp90-2-15-segkey,
  vp90-2-21-resize_inter_1280x720_5_1-2, vp90-2-21-resize_inter_1280x720_5_3-4,
  vp90-2-21-resize_inter_1280x720_7_1-2, vp90-2-21-resize_inter_1280x720_7_3-4,
  vp90-2-21-resize_inter_1920x1080_5_1-2,
  vp90-2-21-resize_inter_1920x1080_5_3-4,
  vp90-2-21-resize_inter_1920x1080_7_1-2,
  vp90-2-21-resize_inter_1920x1080_7_3-4,
  vp90-2-21-resize_inter_320x180_5_3-4, vp90-2-21-resize_inter_320x180_7_3-4,
  vp90-2-21-resize_inter_320x240_5_3-4, vp90-2-21-resize_inter_320x240_7_3-4,
  vp90-2-21-resize_inter_640x360_5_1-2, vp90-2-21-resize_inter_640x360_5_3-4,
  vp90-2-21-resize_inter_640x360_7_1-2, vp90-2-21-resize_inter_640x360_7_3-4,
  vp90-2-21-resize_inter_640x480_5_1-2, vp90-2-21-resize_inter_640x480_5_3-4,
  vp90-2-21-resize_inter_640x480_7_1-2, vp90-2-21-resize_inter_640x480_7_3-4

$ v4l2-compliance -d /dev/video0
v4l2-compliance 1.30.1, 64 bits, 64-bit time_t

Compliance test for iris_driver device /dev/video0:

Driver Info:
        Driver name      : iris_driver
        Card type        : Iris Decoder
        Bus info         : platform:aa00000.video-codec
        Driver version   : 6.19.0
        Capabilities     : 0x84204000
                Video Memory-to-Memory Multiplanar
                Streaming
                Extended Pix Format
                Device Capabilities
        Device Caps      : 0x04204000
                Video Memory-to-Memory Multiplanar
                Streaming
                Extended Pix Format
        Detected Stateful Decoder

Required ioctls:
        test VIDIOC_QUERYCAP: OK
        test invalid ioctls: OK

Allow for multiple opens:
        test second /dev/video0 open: OK
        test VIDIOC_QUERYCAP: OK
        test VIDIOC_G/S_PRIORITY: OK
        test for unlimited opens: OK

Debug ioctls:
        test VIDIOC_DBG_G/S_REGISTER: OK (Not Supported)
        test VIDIOC_LOG_STATUS: OK (Not Supported)

Input ioctls:
        test VIDIOC_G/S_TUNER/ENUM_FREQ_BANDS: OK (Not Supported)
        test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
        test VIDIOC_S_HW_FREQ_SEEK: OK (Not Supported)
        test VIDIOC_ENUMAUDIO: OK (Not Supported)
        test VIDIOC_G/S/ENUMINPUT: OK (Not Supported)
        test VIDIOC_G/S_AUDIO: OK (Not Supported)
        Inputs: 0 Audio Inputs: 0 Tuners: 0

Output ioctls:
        test VIDIOC_G/S_MODULATOR: OK (Not Supported)
        test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
        test VIDIOC_ENUMAUDOUT: OK (Not Supported)
        test VIDIOC_G/S/ENUMOUTPUT: OK (Not Supported)
        test VIDIOC_G/S_AUDOUT: OK (Not Supported)
        Outputs: 0 Audio Outputs: 0 Modulators: 0

Input/Output configuration ioctls:
        test VIDIOC_ENUM/G/S/QUERY_STD: OK (Not Supported)
        test VIDIOC_ENUM/G/S/QUERY_DV_TIMINGS: OK (Not Supported)
        test VIDIOC_DV_TIMINGS_CAP: OK (Not Supported)
        test VIDIOC_G/S_EDID: OK (Not Supported)

Control ioctls:
        test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK
        test VIDIOC_QUERYCTRL: OK
        test VIDIOC_G/S_CTRL: OK
        test VIDIOC_G/S/TRY_EXT_CTRLS: OK
        test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK
        test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
        Standard Controls: 2 Private Controls: 0

Format ioctls:
        test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK
        test VIDIOC_G/S_PARM: OK (Not Supported)
        test VIDIOC_G_FBUF: OK (Not Supported)
        test VIDIOC_G_FMT: OK
        test VIDIOC_TRY_FMT: OK
        test VIDIOC_S_FMT: OK
        test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
        test Cropping: OK
        test Composing: OK
        test Scaling: OK (Not Supported)

Codec ioctls:
        test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
        test VIDIOC_G_ENC_INDEX: OK (Not Supported)
        test VIDIOC_(TRY_)DECODER_CMD: OK

Buffer ioctls:
        test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK
        test CREATE_BUFS maximum buffers: OK
        test VIDIOC_REMOVE_BUFS: OK
        test VIDIOC_EXPBUF: OK
        test Requests: OK (Not Supported)
        test blocking wait: OK

$ v4l2-compliance -d /dev/video1
v4l2-compliance 1.30.1, 64 bits, 64-bit time_t

Compliance test for iris_driver device /dev/video1:

Driver Info:
        Driver name      : iris_driver
        Card type        : Iris Encoder
        Bus info         : platform:aa00000.video-codec
        Driver version   : 6.19.0
        Capabilities     : 0x84204000
                Video Memory-to-Memory Multiplanar
                Streaming
                Extended Pix Format
                Device Capabilities
        Device Caps      : 0x04204000
                Video Memory-to-Memory Multiplanar
                Streaming
                Extended Pix Format
        Detected Stateful Encoder

Required ioctls:
        test VIDIOC_QUERYCAP: OK
        test invalid ioctls: OK

Allow for multiple opens:
        test second /dev/video1 open: OK
        test VIDIOC_QUERYCAP: OK
        test VIDIOC_G/S_PRIORITY: OK
        test for unlimited opens: OK

Debug ioctls:
        test VIDIOC_DBG_G/S_REGISTER: OK (Not Supported)
        test VIDIOC_LOG_STATUS: OK (Not Supported)

Input ioctls:
        test VIDIOC_G/S_TUNER/ENUM_FREQ_BANDS: OK (Not Supported)
        test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
        test VIDIOC_S_HW_FREQ_SEEK: OK (Not Supported)
        test VIDIOC_ENUMAUDIO: OK (Not Supported)
        test VIDIOC_G/S/ENUMINPUT: OK (Not Supported)
        test VIDIOC_G/S_AUDIO: OK (Not Supported)
        Inputs: 0 Audio Inputs: 0 Tuners: 0

Output ioctls:
        test VIDIOC_G/S_MODULATOR: OK (Not Supported)
        test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
        test VIDIOC_ENUMAUDOUT: OK (Not Supported)
        test VIDIOC_G/S/ENUMOUTPUT: OK (Not Supported)
        test VIDIOC_G/S_AUDOUT: OK (Not Supported)
        Outputs: 0 Audio Outputs: 0 Modulators: 0

Input/Output configuration ioctls:
        test VIDIOC_ENUM/G/S/QUERY_STD: OK (Not Supported)
        test VIDIOC_ENUM/G/S/QUERY_DV_TIMINGS: OK (Not Supported)
        test VIDIOC_DV_TIMINGS_CAP: OK (Not Supported)
        test VIDIOC_G/S_EDID: OK (Not Supported)

Control ioctls:
        test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK
        test VIDIOC_QUERYCTRL: OK
        test VIDIOC_G/S_CTRL: OK
        test VIDIOC_G/S/TRY_EXT_CTRLS: OK
        test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK
        test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
        Standard Controls: 18 Private Controls: 0

Format ioctls:
        test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK
        test VIDIOC_G/S_PARM: OK
        test VIDIOC_G_FBUF: OK (Not Supported)
        test VIDIOC_G_FMT: OK
        test VIDIOC_TRY_FMT: OK
        test VIDIOC_S_FMT: OK
        test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
        test Cropping: OK
        test Composing: OK (Not Supported)
        test Scaling: OK (Not Supported)

Codec ioctls:
        test VIDIOC_(TRY_)ENCODER_CMD: OK
        test VIDIOC_G_ENC_INDEX: OK (Not Supported)
        test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)

Buffer ioctls:
        test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK
        test CREATE_BUFS maximum buffers: OK
        test VIDIOC_REMOVE_BUFS: OK
        test VIDIOC_EXPBUF: OK
        test Requests: OK (Not Supported)
        test blocking wait: OK

Total for iris_driver device /dev/video1: 48, Succeeded: 48, Failed: 0, Warnings: 0

For SC7280, the results match the SM8250 ones.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Changes in v4:
- Fixed building (Dikshita)
- Changed H265D_MAX_SLICE to have the same value as in Venus, fixing
  H.265 decoding on SC7280
- Link to v3: https://lore.kernel.org/r/20260127-venus-iris-flip-switch-v3-0-7f37689f4b39@oss.qualcomm.com

Changes in v3:
- Dropped dependency on the sc8280xp patchset, this will probably go in
  earlier.
- Updated commit messages for DT bindings (Konrad)
- Link to v2: https://lore.kernel.org/r/20260126-venus-iris-flip-switch-v2-0-b0ea05e1739a@oss.qualcomm.com

Changes in v2:
- Sorted out SC7280 Chromebook bindings (Stephan)
- Dropped most of ifdef from venus (Vikash, Konrad)
- Added testign results to the cover letter.
- Link to v1: https://lore.kernel.org/r/20251119-venus-iris-flip-switch-v1-1-852369f66e36@oss.qualcomm.com

---
Dmitry Baryshkov (5):
      arm64: dts: qcom: sc7280-chrome-common: disable Venus
      media: dt-bindings: qcom,sc7280-venus: drop non-PAS support
      media: dt-bindings: qcom-sc7180-venus: move video-firmware here
      media: qcom: iris: increase H265D_MAX_SLICE to fix H.265 decoding on SC7280
      media: qcom: venus: flip the venus/iris switch

 .../devicetree/bindings/media/qcom,sc7180-venus.yaml      | 15 +++++++++++++++
 .../devicetree/bindings/media/qcom,sc7280-venus.yaml      | 10 ++--------
 .../devicetree/bindings/media/qcom,venus-common.yaml      | 15 ---------------
 arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi        | 11 -----------
 drivers/media/platform/qcom/iris/Makefile                 |  5 +----
 drivers/media/platform/qcom/iris/iris_probe.c             |  2 --
 drivers/media/platform/qcom/iris/iris_vpu_buffer.h        |  2 +-
 drivers/media/platform/qcom/venus/core.c                  |  6 ++++++
 drivers/media/platform/qcom/venus/core.h                  | 11 +++++++++++
 9 files changed, 36 insertions(+), 41 deletions(-)
---
base-commit: 4c87cdd0328495759f6e9f9f4e1e53ef8032a76f
change-id: 20251119-venus-iris-flip-switch-d59a3fbc6a4b

Best regards,
-- 
With best wishes
Dmitry


