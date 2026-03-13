Return-Path: <devicetree+bounces-275117-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Ow3Nxvps2l6dAAAu9opvQ
	(envelope-from <devicetree+bounces-275117-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:38:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B3E28191D
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:38:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C05D831578A3
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:34:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1658C387348;
	Fri, 13 Mar 2026 10:34:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kseG5+UP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BFVutWV9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D52335AC3D
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:34:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773398085; cv=none; b=srWyuGtA4CE+yuV2InySuLTaT/XjgSYEpD0XD2kGrWSRwNrfrWAXqUG0GDmeieDvxgm7qMSK7o6JAik9zYDij/S/qVmDfzGgxhq+GPlebrAiegXH2erkuE+ycxIBsroQAmW1pixzQoyk7I3iY/AIk3mKt/iMVRYySYSNte7dGNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773398085; c=relaxed/simple;
	bh=b0m5mclYoW9En5q2IdigRQ0qzO/S5dlubz70W7BgIpc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=gB1jzaIzV8N6Db0cqP1dv5t8Be6r0uWbYza9Eyrmo7MGwq8tDGgAu8RyjGjLf4By1CJ4hrnvCJ/oV61GdiPjYX8UqR8iL58EcMmafxbfqt1sZb4gtwmRNXCq5NLcypzkeOMsa9z8GfGOYWW/qBnSZ2DN1Wz3MFB0V5HX8Ww0kJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kseG5+UP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BFVutWV9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D6oMWN792882
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:34:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=npOVpXI/eG50MvSU1dDdoX
	FqT+LB80/JNvS5DiEZhFY=; b=kseG5+UPj8jZmBG/cqzoTZsXmHrKjPzYpD5NCY
	4Gj9FTcpufzRUdwR3HLuo7+8JqQ3B0UoF5wl9XfGkqMbd7a57FPtmeeH6g3tKedd
	cJH4ppw2C5dtSfEkhE/7wR4w/EUUlFd060pUz6A87kIeLEgH33COsQnV5vF8u9b3
	uL4RBM97HzNtgmDwmRX53a5xK2cr9HJCKTin/Kp3lKpI+2wWqIT5SDVJLzKcKtMn
	DgbnMeuJf5fwP+sFyAjLeZ+ZEV1couhC1dB3WhP2nhWR1+RXsV4/VmjW3MRfVzbm
	ljiMRnTWA5JNSFDrId9VjQSRuhdTHtFcFqQ1rZfQ6trREnGQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvdnt0t9f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:34:41 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-354bc535546so1940731a91.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 03:34:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773398081; x=1774002881; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=npOVpXI/eG50MvSU1dDdoXFqT+LB80/JNvS5DiEZhFY=;
        b=BFVutWV9TiUCNYC3RRN2z63Z4cW7GU5N1MjZ3fZ7TY/zRwmpq2Zrv292d/WD6KuZwS
         6f45rpjXeAfoJpmtoTUf3s0dQFYs5+Fr6C/mrUaZrC0leeFdiG0rXdkV0oTf/Up98FHS
         Ym7yoKGlWQnurfHQXc01caWD/t1QCchOK7vDkI038GeePsE6pW6MYpfWHbt0A0Gd2FE1
         BHJY2OKlvmWTfM1WCqSXPwHuzBbemw9RcK13ejdsUlszrrYfNgRY5WiXKIV8t1O9WvGn
         vRhfW7dzSw5GgtqkI4XRoIVKYIrBbPsbn1on5VbXOh4qVJGfPSWcqAhA3RSgifQ2QRFX
         sKZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773398081; x=1774002881;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=npOVpXI/eG50MvSU1dDdoXFqT+LB80/JNvS5DiEZhFY=;
        b=ncIkEkOus05jMHJLVdoeVhiFvOz9nilRsoaAyMnGFAMZUyjjHoLdOvsF+tMjnKgnqi
         5m6Xp9SBpY69SpqutwmqH2gXfqtst728uJTaNlVT4bTnTnaT/9UfF7MAf1RtYpj06Rs6
         OmQwBrTNi7GYdmiVaM4raYBN8PCWDhaXgmLOb4D9BeCsc9hXFvOo2dSli0e5bHXTickE
         B8VJzcBBpacE077nRCSrG4Q+ST3lXmz5TI0lSoybHTkyT++Q9A3j1znLMY4Azze/NSkl
         q5K94Ej1PbUQK0yWZzkXxylbjjbscGSIcEsRR1zq9vkkr4SgWZqurCeP5q70cEoxEX1x
         flPQ==
X-Forwarded-Encrypted: i=1; AJvYcCWJMUFqGKAFoff7aKJrAIlVH3joCp9iFVAxu6LGa6+knaq/DtMfdQCCVGp33mlYjBv+Jr80RndFA4W5@vger.kernel.org
X-Gm-Message-State: AOJu0YxB5tzbBErP4eoiPotZ/HPTSUNIvF1CLZyQzPMVvJjleviwQ8cl
	PaR5ReitdQueXM8d62T/iD7UJ3xt9K+yNxmJXGE5YyFU52Lyt36ZpijFG+l4FegmJr8n5trxofP
	AJO6XLg3KA1HNRefn82Q04rFaaLl+8K/ozDS0rDS5WvH8P6bf5j1YBTVeM01iLrJZ
X-Gm-Gg: ATEYQzzB0sd9iXRGZ0tPHKrv0vwpNfnC6wSVTDMPpIP/pz2FrivfTAWr5w8vjtZFlu8
	IRnfD4tz7mr2o6OEqeaVG1qQXeejtT/TFueeRFI6aV/FG3AV/kJ0yHMcILzPhkEsFIGOyOqKBAF
	ycrLU4U7V7oE6C3/1NayvnpMndegYPLga5w7DxVy4fYurooEOwXs4tAkeWN9G7znQyb0I35SfX6
	CJORq1mNQJZ2jA9ksdkjNyza95aULAwCxA/b89bajasjAo7bVz8vmy3ZgGCI/un0otOajXe3kUm
	a6Ih6HtiZ7jrFt0nDWLN6fzBYoYXEog4Y0m7y9Qty7gGFBrnYO59Nnh2O2UHEEl0NvsOd21GhvG
	yPMeWsyETEWU2pxRcNiT+YUhsBjWYXpYFDQNZxTVkLa/DOXAlsrY=
X-Received: by 2002:a17:90b:4a46:b0:34c:35ce:3c5f with SMTP id 98e67ed59e1d1-35a21e38ea7mr2317472a91.5.1773398081095;
        Fri, 13 Mar 2026 03:34:41 -0700 (PDT)
X-Received: by 2002:a17:90b:4a46:b0:34c:35ce:3c5f with SMTP id 98e67ed59e1d1-35a21e38ea7mr2317449a91.5.1773398080668;
        Fri, 13 Mar 2026 03:34:40 -0700 (PDT)
Received: from hu-gkohli-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35a02fc8465sm8055383a91.9.2026.03.13.03.34.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 03:34:40 -0700 (PDT)
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Subject: [PATCH 0/2] Enable TSENS and thermal zone for SM8750 SoC
Date: Fri, 13 Mar 2026 16:04:16 +0530
Message-Id: <20260313-sm8750_tsens-v1-0-250fcc3794a2@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACjos2kC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDYwNL3eJcC3NTg/iS4tS8Yl1TyzTLVGMz4yRLSzMloJaCotS0zAqwcdG
 xtbUARyPpzV4AAAA=
X-Change-ID: 20260309-sm8750_tsens-59f9e363b996
To: Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aastha.pandey@oss.qualcomm.com, dipa.mantre@oss.qualcomm.com,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <quic_manafm@quicinc.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773398074; l=715;
 i=gaurav.kohli@oss.qualcomm.com; s=20260302; h=from:subject:message-id;
 bh=b0m5mclYoW9En5q2IdigRQ0qzO/S5dlubz70W7BgIpc=;
 b=UgeqgAmsrx3Rbl1cGEkWil2GG+yW0w0d5oEcO/z7nKW2ruuD2tm/pgec2j7HY0cxwmyooSKQC
 n+Usd1Q4MwEBs97askkgET4g9Rf9HJ90wS7lf9ZXYkIS/ULjEAIg3rE
X-Developer-Key: i=gaurav.kohli@oss.qualcomm.com; a=ed25519;
 pk=IdNsqe8rWsF6dbpGHfwPEH9zM0nbOdRH72HxUT9qPak=
X-Authority-Analysis: v=2.4 cv=KZrfcAYD c=1 sm=1 tr=0 ts=69b3e841 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=iVRbNCi4RErFctStz8oA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: 8vNa3DVgd1KfxehWTsTuaiROH7rBplLn
X-Proofpoint-ORIG-GUID: 8vNa3DVgd1KfxehWTsTuaiROH7rBplLn
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA4MiBTYWx0ZWRfX23X8kB6M3OrX
 iuJiSLgmg3PrGolqNrqHOolqPuYFA7ouwxDdOiAreoRxKpvv6zLlCPAxU0B7fHPHa5BIFxsCl+D
 Hmd8wjHBdReITZfln7R/E6BT2Kj+ahy2YT7ozScDT6WleaPQ15Z3qdeNKZnw0aI6VA1rN9GYcvR
 u0upLnkKFl55wcQmWisEvQC7uMvX5jJlbgTsYNiuYHZHh0V0WtZJlTHiM2o9rBtBjKoNUc8JsYx
 wfdKFSjdwcTWCN9pcxAn6gpPLzENZlNP4yTSniSGvAeTUK8jbc57VooR2FNmCXZasqJgw5Yu3cD
 hNGyL3C0Q2N3oazhc3IF4EtCOvxjQy1I0qSzHfixj5MXMeSR7543d5ScDFWjfJT8Vf4/UpoR9Ls
 qSrcH04wl+Ddjy0/Gshm4G6LJaI/alw4hV5IvezNWHAKPw3qF01y/d+Gb3ZR5C7fu0UTqci6Xjj
 ZvEFK/RZ4nGDOubTrUw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 malwarescore=0 impostorscore=0 adultscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130082
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275117-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,intel.com,arm.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gaurav.kohli@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 42B3E28191D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Adding compatible string in TSENS dt-bindings, device node
for TSENS controller and Thermal zone support.

Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
---
Manaf Meethalavalappu Pallikunhi (2):
      dt-bindings: thermal: qcom-tsens: Document the SM8750 Temperature Sensor
      arm64: dts: qcom: sm8750: Enable TSENS and thermal zones

 .../devicetree/bindings/thermal/qcom-tsens.yaml    |   1 +
 arch/arm64/boot/dts/qcom/sm8750.dtsi               | 897 +++++++++++++++++++++
 2 files changed, 898 insertions(+)
---
base-commit: a0ae2a256046c0c5d3778d1a194ff2e171f16e5f
change-id: 20260309-sm8750_tsens-59f9e363b996

Best regards,
-- 
Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>


