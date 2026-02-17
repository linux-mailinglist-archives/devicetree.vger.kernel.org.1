Return-Path: <devicetree+bounces-266284-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gEYhHc3blGmkIQIAu9opvQ
	(envelope-from <devicetree+bounces-266284-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 22:21:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE6C150AED
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 22:21:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 71C9B3021724
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 21:21:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8DBF2F1FE7;
	Tue, 17 Feb 2026 21:21:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VuBMFuR8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aqKyehPp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9BB228371
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 21:21:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771363266; cv=none; b=uWvvhmYsAQkUQEo3xSifRKRozBlF9r405mZWg5ZwoRtJ+fO1BVaTmK50I0lTvEniAhDblFRLOuns/30jyL8FzjmUYn/T+BQfhikTuvU89/oaW7craAEaPyJuL6pF9M7Jdz3b0KsrNin4+40BJPsnXvnzt46zAaav16ej4i6rFRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771363266; c=relaxed/simple;
	bh=So5DAPOagglRuxxNfRxbVzdVheY/RSOxfrbm5LalMuA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=nbKMdySLnL95tUPSNguMzoM68o4Oanr788gcDi5vprvfE1ddc62JnNp6WvmukkY46G4JF9ilc5Hv1njyWSWl/O9XhD2Z8UKCZuVTepTP2g0lEc8QkqYXJZuBe5/fDMCeS/ImKSuRRjOjaSzzq9XmPaBduKL+LScbKMQuw1GBCdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VuBMFuR8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aqKyehPp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61HESmm62111529
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 21:21:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Mpo6ZXOUjqQn+TnZjbujeQ
	vk1oiNsJperFxg8Nu2lFI=; b=VuBMFuR8uY8S1QJNruz4RfsdHbZma2nj7hjm9l
	pKyfHjuZFCL06YxjpfO8ewsBI8O2Ii0/snzse2oG0GpURIRggKJSPUqJXcT9d0M5
	Frras3H9FfmkuAeNHiJGNdRxarsxYgATYN3ocmy5pn36FVNKyMZYlaJDR5mKnGE5
	2ENWW9gYcP9fOE0NGtopC8LNwIB/QFYLeU1Mitjf4h7QhIQAWQIgeOeN9waj1HlU
	iVoJJB2D/Ynf8PBSTwyg0sNxLndI2LZahr738ut7T9ADSBUpF57D2cTrmv9YEo5J
	dXZWzi6UYOumnDXx8gIqvBosP3B+B00fWWakTbKrvodLGXKA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cchv4jr7x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 21:21:04 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8ca3ef536ddso3663781585a.0
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:21:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771363263; x=1771968063; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Mpo6ZXOUjqQn+TnZjbujeQvk1oiNsJperFxg8Nu2lFI=;
        b=aqKyehPp3ecE/EQYzQlzmCzUD3Jws+m92CSXRrJYHfQXAjEcoJmLxY7ZYScrT0wsr7
         hhZewqfY8R/ZbY6lMO09+9Bo0iWuXfsGn8diu6DWC+AC42stLzgGRsMDACuYMos72Qyx
         CkgSBHZbjiJcLr/bLBVvUZQ1gk97vDYOr2noiLq17PLH5cw8pPIsS/qB7o5HzXW4LaCX
         IOBGWinlXhncyg1tTRdtxxbQdkC5iMDfxenOO57+J5Onw5vzYqCrDaisLb4BsE8frwJu
         zW+qYgfDP5ojp9lpwmUpYmET/nfIZRxW15KU99jUvKw8kjn6Z2BwUp6/ZM+7zFHzVa2W
         2Bkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771363263; x=1771968063;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mpo6ZXOUjqQn+TnZjbujeQvk1oiNsJperFxg8Nu2lFI=;
        b=sJEbADeMPQ6TxS7QgLUU7M2MkiyBoa28bZgqkQFmJBWby82IdBF2KyOAIGnW+TFDTw
         4c8NHB9GzzWem6NRWuD3g2AaOOfSRRwmNMYRYTkPLKS55m0oFSooXDX6QIYt9a8KfnU2
         pKuYmekI5rk0hmLnobampsKDo0TKYp7BrbXVHBeGUrzu7vHbFMEbO6+3vrjA41mIXpzF
         DApnSBcH2N5mL7wz0ific+8mwpueGc+gRL6a6GtpPgc61evtPMmq6ZLI7sNyQVOxTTAv
         Ih6fa8Wn+oD3mXNfN3KsOnYZp9CWyj7IZnR/liV/NKy4xFF4o1T9E6rPJtdRV5zi1B4H
         NQiQ==
X-Forwarded-Encrypted: i=1; AJvYcCVbDdkhbRM3pbIbHMgAXakc+GT+/diNncVsGzVZYBV9ujPSR90eamFoeDQ7dLqWSbEy2OxTwrs/A9D5@vger.kernel.org
X-Gm-Message-State: AOJu0YwsZcBrw7OOOboQpsxpTBpNclvR+Wl99mvEp5MfAMEDRunPCwmN
	Ahw50LNc+wIp+2zGX4CHLWlfzzKrb1J4/VR6DuDzbZ25aOuf9QsL6cgjoxzc2HgBFwJ7eiA9c1C
	2YbPsQntiRUY+gV9DUaJyBxJJvTUU7Sa+c5XOoJPXTPFm1814eGMtZbfkCglE6y9O
X-Gm-Gg: AZuq6aJy2tMvvT2jGceIv4VG6qa9czDmYJCynConXbvyRC15OJIu5S43hH0fIEaXSY2
	4hgGYNyV8Gzecl+KxjECDjIFvgoo2U6TQoIIfZluyMkBksOAEcXnevjAutaD/EmGHIE2ETu3t3n
	wqORRsRlatLe5IrpcOlcNBDkR5jmbpItRZLT+n8dFsqwmRXUSDQu/ZLYMm3eB+cG0gBR1LXIi5w
	WMQrNN5mWtsU2EX7rdMC/XwpaKt5ICutQi4z1S1iLPof4BbGa70SbY0xWEynIesj07UvFp1eKtL
	8TsY5/m+1F//dIwMc8BGqQVLYAtQbTLaJBxYg70ekkLA65kj70oeG80ytUlAK7aqbZJnd+5wGYt
	oDQz1VF04B4qA0o6vcYS1jEK24B52+Rf6ri+Zh0P+vpgvbJCO/6zgO0YDdfZHT6mfEtCP9qCpOX
	xuuXr0EJ10yP+K0qzaFWgqXRSizcWMi3AdFoE=
X-Received: by 2002:a05:620a:2995:b0:8c7:9e6:3a7e with SMTP id af79cd13be357-8cb42172477mr1687430685a.0.1771363263022;
        Tue, 17 Feb 2026 13:21:03 -0800 (PST)
X-Received: by 2002:a05:620a:2995:b0:8c7:9e6:3a7e with SMTP id af79cd13be357-8cb42172477mr1687427085a.0.1771363262487;
        Tue, 17 Feb 2026 13:21:02 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-387068923c3sm39293311fa.5.2026.02.17.13.20.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 13:21:00 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH 0/4] arm64: dts: qcom: support SDM845 HDK
Date: Tue, 17 Feb 2026 23:20:41 +0200
Message-Id: <20260217-sdm845-hdk-v1-0-866f1965fef7@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKnblGkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQyMj3eKUXAsTU92MlGxdSxMzM1Njg2QTIzNzJaCGgqLUtMwKsGHRsbW
 1ALj4rUtcAAAA
X-Change-ID: 20260122-sdm845-hdk-9466530c4267
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        stable@vger.kernel.org, David Heidelberg <david@ixit.cz>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1105;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=So5DAPOagglRuxxNfRxbVzdVheY/RSOxfrbm5LalMuA=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBplNu6wAsYqbpsJtY47TFZemmJPOiA4bX87bJqd
 PUT9143tIeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaZTbugAKCRCLPIo+Aiko
 1V9BCACifkopt7md6LE/Lrw4HdJ1gOTp3SBRc2ppzfdSpwUM2HPFxh8yNrLwDAHo+cj8nfumo+0
 fErmKzrHYlxL7Kexx7Y97qXtUfEqHHlbhgSbfVKG4NQ1hAsY/qY0/cXr/qths/B0MO41qeBUTsJ
 aCXmP5isXV58q5YosxDb2U2AjoGGmLOyLw9oInnH1VGetjLYctjhslDIIkN/t3ghOJReKwQzBGz
 5QskmKIidHTTQ/lJlYK6qqYXFSgCKfl6aivRtD5r7DXoBpUwNcV1Z/KGAW446gO1AVpBXYXsvm3
 nHSEkjW9eGa2Aq0cr8WyNW0hD0qg3TLGH3Fuc7gfjmbTWHKV
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=eYAwvrEH c=1 sm=1 tr=0 ts=6994dbc0 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=mHcH_6gvefJmbxJJHiAA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDE3NSBTYWx0ZWRfX/fL5Lxgtg7TX
 cEUce4i0taqBESGI6dEMCmDM8lP2F3+5Rdmb0zFN3fEdmsUN2qid+jQYCi4mbgXuulLIRUu/e72
 8ae+nwHhDmpY3vCZ6MQtfseKyQZ9GyzHfqitytAPbvBl+vJqWkkMIb5AilIeNEYJQJtHbwUWi3D
 w3Q2omYsTjMwaIqqPqqE2SJHWWv7t5KOcgcJ9ktPRK/SEZmRW8M4TJfqidSmht31xVf590JP+RO
 PiUDbtTglzEl1R2zX42e4cYC+rwcRL7JJnuWIHZ3pubdp2xFASvBY+HpX0vTWFrSdivqmzdNiio
 psbeMFY76ktC/2KBMryg7hSH7zAKqOknI7+a44SZ5yoY0I12nlyqp36/WR04aNCW9w7eQGFRJ8D
 SQRswtvC1M1hpGjg82qCMkEXfPghewNrjLyivPWmzKTEcHezOZbL1XkiAdH6N2dUt62RqDJ9z9Z
 T3oP1XtrUuAdHOnAkxw==
X-Proofpoint-GUID: u2-ebhpfjHvB2mxZqxTcBfi__y0xbzh_
X-Proofpoint-ORIG-GUID: u2-ebhpfjHvB2mxZqxTcBfi__y0xbzh_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_03,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 phishscore=0 impostorscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170175
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266284-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1FE6C150AED
X-Rspamd-Action: no action

Lantronix HDK845 aka Qualcomm SDM845-HDK is a hardware development kit
for the Qualcomm SDM845 / SDA845 platform. It uses the modem-less
version of the chip (SDA845) and provides a rich set of the peripherals
and connectors.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
David Heidelberg (1):
      arm64: dts: qcom: sdm845: Add missing MDSS reset

Dmitry Baryshkov (3):
      clk: qcom: dispcc-sdm845: set GENPD_FLAG_NO_STAY_ON flag for MDSS domain
      dt-bindings: arm: qcom: add Qualcomm SDM845 HDK
      arm64: dts: qcom: add device tree for SDM845-HDK

 Documentation/devicetree/bindings/arm/qcom.yaml |   1 +
 arch/arm64/boot/dts/qcom/Makefile               |   1 +
 arch/arm64/boot/dts/qcom/sdm845-hdk.dts         | 820 ++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/sdm845.dtsi            |   1 +
 drivers/clk/qcom/dispcc-sdm845.c                |   1 +
 5 files changed, 824 insertions(+)
---
base-commit: 54f467c01375a137f5801a910089138d2202b148
change-id: 20260122-sdm845-hdk-9466530c4267

Best regards,
-- 
With best wishes
Dmitry


