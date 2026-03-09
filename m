Return-Path: <devicetree+bounces-273005-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cHNIKQPprmlRKAIAu9opvQ
	(envelope-from <devicetree+bounces-273005-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:36:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F20B23BCBD
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:36:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B26A030767BB
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 15:24:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC2ED3D9034;
	Mon,  9 Mar 2026 15:24:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ezxlHF0h";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aZUm2jtW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 930B33D7D67
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 15:24:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773069870; cv=none; b=gbzqr6xDgOylcVmD9oyeQLwFljBUWsspAQ24ymzsEJYvNdfRJgB3li3QwzQWEqv6xE/tzE49CxYGFJui55PMKVWgODe9ZT4VOnpkNhdzhwLxV19YRbBUHJsN2O6mSSIV0tI2ozn2D9rYtZewpMhm9bWtbcDIcxBZGeZHWIOFDQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773069870; c=relaxed/simple;
	bh=i24TgRrLoGVPLjM+/eKgUisXgQ4vL+kM6dE3Nj1V3G4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=TLujQchZr40frId8/ERulUx0cILBzTmT1qklRKQcqKSdZpOeEEPYxWxnzwcHnDMcLbJFe/OHos0PtSV3RhyeCY+k/us+a6KClChAC3FXj1yEDzoa717SR9Y4PWcGWMvQNLARC89Zqdvcq4BgGe8aDpTk3H0TB6xG2FFfE1tJwEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ezxlHF0h; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aZUm2jtW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629A6dex2195101
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 15:24:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=yga3XbiT8rvRu5nMdqM4/M
	FVlYqHPYbfjWpnYtaYAOw=; b=ezxlHF0hR5ibnUmPjHNsH86x148fYh/ke8b6Qk
	Ur3tQcRVAnIt6cM9XG4yZfxit7Sv+N9Atet7J4DwCgNpG84l6omh51jyI54dUIA3
	8JCSrBpgEzOZiQSKrCvLqCYJO4aPoKmHzsTDR0tmDiMdF7kCTzZmFNacVmRyhd4D
	sc1DbV/IQskTu6KFA9EBC/Fm2EUGMB3HEEp7CcPUHq0eh689hVVkP/0aLGOXECrf
	Hvsnnk/oZAxD/W7VplJ9QsaWWVrjmO4an60s5FyGy7na7iL9T9xdHtv79GhYMToG
	hoWPIJqIt8/xGBw1HZBDBwS0VA+cWWqMAi32HGQ/3j9Ggtaw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4csv5u90e4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 15:24:28 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-89a08e6cd15so475248106d6.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 08:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773069868; x=1773674668; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yga3XbiT8rvRu5nMdqM4/MFVlYqHPYbfjWpnYtaYAOw=;
        b=aZUm2jtWYOhlVzOFay8zKFb5ZXYCZ7TUn/rz7wsbqKTBpYCcFdX1QC4AVsPhTVyaeC
         9TYdkWVwDiLrMy6lnd/huOhOFIfAlv+jrOL1ueiUW34mB4EIFCTUOuBaUr0mKn9yanJb
         a8yHfqCD3QvnBbUrSYDcbu8dxb0MBhcKVtfU3z/B7eg+vahftxsPvqxiKuSZRJzXWOT5
         ZLEx72suFIL+JFMtzJQw6vgonWGdSqed4/BlOoiD/zQGP1Ab58Y+/FoHuI9D4RUgouVU
         G3DJK1BWHGmydW4V+NpqMHgMWmFtH5BrsK7jiqoib1S+HIfMXKozgRX90UMUPX4nb02f
         aKKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773069868; x=1773674668;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yga3XbiT8rvRu5nMdqM4/MFVlYqHPYbfjWpnYtaYAOw=;
        b=vObMuRDM2R2G7NLGdy6vm8ad9Fq4yY6xWLZzPthRaP4ZJ3InS8ZOmErxHqo9mdJl6r
         8qbHrLDmIPby/0uSNIT93QWif4D8N8bcJW5cOp8Pzbu3nwDCrywwfZLLAuS9/jWLcgzW
         etStMyvsl/5BJiLvFTpDRENGTC7OXhtO4vRzey/XQi/CsH0VoU64bHqajwfe0zIO3F58
         BYxLGnTSy6xvT+W2c4L+/B/oUma5FO9YzNdwhDo3J9f8u4LEmONVp53ARLpMRSlK7aVN
         kR9ye+4+5OzpKeQ09LVqgi7LN07xYh1CdnkXnJ5oI98a52If9jV+oVRP8Ehuy5PMZl8n
         gi3A==
X-Forwarded-Encrypted: i=1; AJvYcCVyCc6qTNeWIEoCAErCwIdWKNnPvXkgUBaK5GPnLiox5mE77vdraM8wMhsXihNt5rK092GyuyALiz7R@vger.kernel.org
X-Gm-Message-State: AOJu0YwwZMPNRbFF6W+sDW5o8jmBohnTqyKLyOAMbd2UOuC++Q/TTvhM
	qaUxK7tJkyYFiXa6Td+z9Cr2U2vMdywR7KzTcORH21wBeXEQptk6bMa0pb/A0bzYjQU0ene6JgW
	c255EUBfeGspqFselX/bdUmaz8qiSYf8Po7SVGm2eO5qENVwYusqN74r0nZqLP/73
X-Gm-Gg: ATEYQzx4Vsa+mAAfPidwzgjMQKqpRqKxUyXrsFo9krOzQZETsqMCupl6EE83QUr65Lm
	86t+cvv2fczcX/fO0JkZdj06iP9t3eIBlHQ+qU5QbI8sbN1bW0iRPq1dBUcm/7OwIClR8bAQBHv
	b4rYY1FbMwtoMMx+3G5K8OqniBfCxkLv3SmRUxx14dtL8gKf+vZGmg8QTh42TOUgb0Njhsof8pp
	7JnaAPOAyuRLiwrflGapvOX/83mUkxKjnk/9TSfMP/dcbNcGbsvSj4CdDX4hUdzs3Aqf4jy4+hP
	zpPds3ud7xygxVxnSnC9khnqgEKqJkiiwc/lV1q3/zGYypvCEamtDKlYtbOBZ50XJXQDNVa454P
	3Iv87zzFucqoldyUDLTHBaYiRthsuxcBy1nYfmHlUkWk2+GSGJJGxem0=
X-Received: by 2002:a05:620a:290e:b0:8ca:2baa:6656 with SMTP id af79cd13be357-8cd6d461f63mr1458819885a.55.1773069867892;
        Mon, 09 Mar 2026 08:24:27 -0700 (PDT)
X-Received: by 2002:a05:620a:290e:b0:8ca:2baa:6656 with SMTP id af79cd13be357-8cd6d461f63mr1458815085a.55.1773069867392;
        Mon, 09 Mar 2026 08:24:27 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4853a59fc36sm192812515e9.9.2026.03.09.08.24.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 08:24:26 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: richardcochran@gmail.com, geert+renesas@glider.be, arnd@arndb.de,
        dmitry.baryshkov@oss.qualcomm.com, ebiggers@kernel.org,
        michal.simek@amd.com, luca.weiss@fairphone.com, sven@kernel.org,
        prabhakar.mahadev-lad.rj@bp.renesas.com,
        kuninori.morimoto.gx@renesas.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org, m.facchin@arduino.cc, r.mereu@arduino.cc,
        loic.poulain@oss.qualcomm.com,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH 0/7] arm64: dts: qcom: Add support for Arduino VENTUNOQ
Date: Mon,  9 Mar 2026 15:24:11 +0000
Message-ID: <20260309152420.1404349-1-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: f8nEQOT3xMy2FO5V9WEs7bZHTQssIYC_
X-Proofpoint-ORIG-GUID: f8nEQOT3xMy2FO5V9WEs7bZHTQssIYC_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDEzOSBTYWx0ZWRfX2OQOQHcbs6zW
 H83pXVxkdrL1Rfsjc0Zf5haCMyhpLdPAVt2kvRqYhHf2dc2WkPfX3iZZorFPuA5GOmS4IdMU1dG
 sGB7+OoVPufo9S5HragflEkjA0ho9WRWywUhxt/kAbrhcDghoxmRv17a9Fv218LqXxwGwo/4Dha
 C8UTg8wqe34SdOpPHiqcx+2iz0cxGHnm2EZammZEwvXrXldeUbBRD/XTfO/duzbp2yPvHfegi18
 jZcuBDtMeqbZU43wpJAETeHJwMQctYESixoZv0Aw28j5yJw+Sf7zUIPRZcbjyY/4qtaQ/4etIdv
 /9ZF8sG1PMbJyZ361R3n/GGtMGh4IH5G2dhHJnaDQQN5mAsjXs9RhwqbAR6vZgt5gEDiw0Hn+FA
 vVkpN/pFxgrJY/0y7DlVwt+N1PhlUh0eRbBySaeN0C2veLCuWLwsZrzhhMNsZQiQdt5ixmKhrQQ
 z3U282poVfy6LyxX9Lw==
X-Authority-Analysis: v=2.4 cv=Xr/3+FF9 c=1 sm=1 tr=0 ts=69aee62c cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=NEAV23lmAAAA:8 a=Ar_5JxPjAAAA:8 a=6arpMgwqxbr1QNdnrLkA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_04,2026-03-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 spamscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090139
X-Rspamd-Queue-Id: 1F20B23BCBD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_CC(0.00)[gmail.com,glider.be,arndb.de,oss.qualcomm.com,kernel.org,amd.com,fairphone.com,bp.renesas.com,renesas.com,vger.kernel.org,arduino.cc];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-273005-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,arduino.cc:url,qualcomm.com:dkim,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-0.991];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

This patchset adds support for Arduino VENTUNO Q board, which is
announced recently [1]

VENTUNO Q board is based on Qualcomm Dragonwing™ IQ8 Series processor
along with a dedicated STM32H5 microcontroller.
This patchset adds support for below peripherals
    - USB Type‑C connector with dual‑role support
    - ADV7535 DSI‑to‑HDMI bridge
    - MAX98091 audio codec
    - 2.5G Ethernet PHY (HSGMII)
    - PCIe0 (to onboard WiFi chipset and USB bridge)
    - PCIe1 (to M2/nvme)

To make dependencies easy for new audio dai ids, I have used numbers
instead of defines.

Audio tplg is available at: https://github.com/linux-msm/audioreach-topology/pull/55
Branch based on linux-next kernel: https://github.com/Srinivas-Kandagatla/linux/tree/arduino-VENTUNOQ 

Thanks,
Srini

[1]: https://blog.arduino.cc/2026/03/09/introducing-arduino-ventuno-q-your-new-ai-robotics-and-actuation-platform/


Loic Poulain (4):
  arm64: dts: qcom: monaco: Add HS/SS endpoints for USB1 controller
  arm64: dts: qcom: Add Monaco Monza SoM
  dt-bindings: arm: qcom: add Arduino Monza, VENTUNOQ
  arm64: dts: qcom: Add Arduino Monza (VENTUNOQ) board support

Srinivas Kandagatla (3):
  arm64: dts: qcom: monaco: add dt entry for lpass lpi pinctrl
  arm64: dts: qcom: monaco-arduino-monza: Add sound node
  arm64: defconfig: Enable configs for Arduino VENTUNOQ

 .../devicetree/bindings/arm/qcom.yaml         |   1 +
 arch/arm64/boot/dts/qcom/Makefile             |   1 +
 .../boot/dts/qcom/monaco-arduino-monza.dts    | 512 ++++++++++++++++++
 .../arm64/boot/dts/qcom/monaco-monza-som.dtsi | 325 +++++++++++
 arch/arm64/boot/dts/qcom/monaco.dtsi          |  89 +++
 arch/arm64/configs/defconfig                  |   2 +
 6 files changed, 930 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/monaco-arduino-monza.dts
 create mode 100644 arch/arm64/boot/dts/qcom/monaco-monza-som.dtsi

-- 
2.47.3


