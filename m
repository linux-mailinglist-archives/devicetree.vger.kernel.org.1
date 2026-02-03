Return-Path: <devicetree+bounces-262052-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iJ+TMHGNgWl/HAMAu9opvQ
	(envelope-from <devicetree+bounces-262052-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 06:53:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF08D4D6D
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 06:53:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3E740305BA6F
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 05:52:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E7AA36826B;
	Tue,  3 Feb 2026 05:52:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K0kqsd8h";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aB3Wxgey"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B732D207A0B
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 05:52:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770097959; cv=none; b=XEJ8JRVYusc72PHPUqUyYlpVdHRJGl9lMTVbnIGU0ed3wwcZ+vSTtFTkKwpUMGdHC6SVdglqBwX1TwJOSPFBiblBCM1+fyLiKuB/eOyVPXrIql8VzNY8EKMvaE0509QTUgql4iM+rACS7iYB1sEBAWFnUQw4cWqBIL9wa5awlL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770097959; c=relaxed/simple;
	bh=U3SBm8Q4F2Lqg46nftP77Qbyf63TqJWnGptxyfW3r6I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=k8AWfADybZV/GmJCQOYAEM9MeRG2ekOC+vWTn4DixTbW3Q8uw2EXzIKiP4Rk5cKcLlD52/JSO6Sk64I6E/p++S3nRk/WFHT7D+ASCRpi6IvYxfOJF9wbiuh8hd19sbhKnMUK1ilxgB86fzVo41iyvjydgu6/d7AEsm/FBJc1Mf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K0kqsd8h; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aB3Wxgey; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6135ot5X2261991
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 05:52:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2hUWnOSTgpb39HiN4iScZAjggx5kZGetEG2O1nLvCqo=; b=K0kqsd8hcHXqDv+m
	men3VgvgZm9iXoRodTQL9wLGndo3xuDNk6I3Bz1MWn0LLI046yfRvt1fvqRC4iPv
	xmohmWjV6OpySZYccV/Fw306/+pe1nfhZ7L++CLfJXYXfo2ib92ZHCdbsmjETvVg
	xH8M/pFaU9FCTBAxHTSnDidcS55hkwrGzAdTcDYstLilhocidCReyG21RH9/Sv4B
	ggd/Z+1ExIZIo5k6H2VxE7htrRQWOdUYNS9tpIiulrcmKfEqGQ1qZL9YSgr/ENPT
	k30gv1rE6RuiLpXXhFbL/U6a+iyMoUWrI7VHQPn6DN1MJMx5DnV3Q7e3pm14UPQO
	wlIJng==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2tmtk2cq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 05:52:37 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a07fa318fdso53350355ad.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 21:52:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770097957; x=1770702757; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2hUWnOSTgpb39HiN4iScZAjggx5kZGetEG2O1nLvCqo=;
        b=aB3WxgeyGJOD5vYIHMYXDnBxJPcf8MaLXC/rNLZPc2zfB20sptqfgt3kYRM4GOvg9X
         qejGnDNrO3hh5k4lBB+BUvD/nqXeRCzsHNzMw4oiVqGiXiJM2w6hzChm+rq8VGQuHqWg
         EiKIp9Wbto6mGlMr0Kv9mV1yAXr85HHickWdyMN2ikSTXHXHn8Gtd+UQ6wBRXWxYf8Oh
         IJlb3oKFcKrmVPHx0ZjRMxY4mZlKYx8xKrBwRpGcxFAqgRrbChnGDJjkaa3u4W7Z5HCs
         1oKWbo59i1AL71lKGqYstNwQ8hWp89woOlVTwscloFrBOu9z0h5B+Kg59EWq7h5ItnAQ
         FPUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770097957; x=1770702757;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2hUWnOSTgpb39HiN4iScZAjggx5kZGetEG2O1nLvCqo=;
        b=aJEixqY9oyhbeIOPs1vfxHc+QMJHe2sUDS4KYHCNBSXJGwEXzkfsBidjWQiU8+MXtx
         Q60VyK+xTLoO4b3q7NLkGRW575lTihiVXIbGJx95kBKgs61xVKKx/qyVJiLewxxgbUXT
         KA0ySS1EyhY8ZSHj16975bKngX3mC7msBB7L1+rv7fLtGH+GWQ5x+qAcgVo+Mvi1Tc5M
         qzo9ZDc0CAzo95JrUGXOwr2lOgvjulpnPqiq+D9XuDzIeMeZdIbF9HKw7KNIzpRQnJXc
         qfwcz6MLJpfRjyC8+kYP66pAYKt6qqDEMVbDzVZ+LYcqu7xaUaJiT3USaoDwkdXhaorm
         v54A==
X-Forwarded-Encrypted: i=1; AJvYcCUmFr39CJUKZ6YZD/lhuTqxWXVT7QeN5gWtAhOCAp5U3++LDAuKeSndxb/QM1raFBdCjB+RZTyMgtzX@vger.kernel.org
X-Gm-Message-State: AOJu0YzQSXISg4sWtoNBYH5PMnlNBbH8c1ojm9srkWp228GtL3LG1r95
	KV/peraLR9drY6tYWZRruKnzPULfOJOEfZUYQh3Bb/Viq/tJeYVWny6jaOFQpjyAiGF5K7gbWD3
	QYb3KxW4Q4tzFhy0ktGh6q3xlKc8dgPw9BcbNaDXsA14EiIVbNUjz0jzZHl8FDuBX
X-Gm-Gg: AZuq6aKz8YKjWXKhqZfM0PeSfRXYtmKaM2XJdBTBZOeDoqExpdeo0NIxOwow7/uid6u
	rz+h6+kxUKe3AReQS0aJmus2UgVcQIFUzpi/Y/Bw6yNSu2v6F1KWNlhbodjBYVxxHu4gJYEpMm1
	hPzR2f1IIin3ZlFvCl/Ay7ZDueVlD0ic3s2fxhd5yooFkTcuOeVHLhMnu7IMFpdOJK3hwnpgYpx
	NakGVxF0RIi4yA83WhZkiF3zDlSjUaSnwVGbW7GN7gqpFhS+x17fes0ZRNAOOuTKspMSAPDxQL6
	Or6dD3q6+iDyNaH9NoHXhV5OV4N56u1aZfFpAxT5Dp4UYJ5iodvS6IUuLHcXKs5Iuu5Ywa76jBw
	y9tZ9DUpOonma42f5HqT2RqhpsD2NAnTVNntA5ohjfNf88z5rJOaOrfZuUoUfR3UX8ww4q9bt
X-Received: by 2002:a17:903:4ca:b0:2a2:dc1f:78d8 with SMTP id d9443c01a7336-2a8d993fc9emr98505565ad.42.1770097956570;
        Mon, 02 Feb 2026 21:52:36 -0800 (PST)
X-Received: by 2002:a17:903:4ca:b0:2a2:dc1f:78d8 with SMTP id d9443c01a7336-2a8d993fc9emr98505295ad.42.1770097956098;
        Mon, 02 Feb 2026 21:52:36 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b6e4189sm157424735ad.83.2026.02.02.21.52.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 21:52:35 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Tue, 03 Feb 2026 13:51:24 +0800
Subject: [PATCH v12 8/8] arm64: dts: qcom: lemans: add interrupts to CTCU
 device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260203-enable-byte-cntr-for-ctcu-v12-8-7bf81b86b70e@oss.qualcomm.com>
References: <20260203-enable-byte-cntr-for-ctcu-v12-0-7bf81b86b70e@oss.qualcomm.com>
In-Reply-To: <20260203-enable-byte-cntr-for-ctcu-v12-0-7bf81b86b70e@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770097897; l=769;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=U3SBm8Q4F2Lqg46nftP77Qbyf63TqJWnGptxyfW3r6I=;
 b=1uZvAUAeceK/WP/F0pOERpVVCDW2i192FDsv27hjFMUWbZ1zfioae9HdwPsbFgIfuTlV1q/S6
 RT6QhC8e2ZsByser15YbRD35K3uiM61LNYKv8pO5XpoAq2rbPQE+ImU
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Authority-Analysis: v=2.4 cv=Xb6EDY55 c=1 sm=1 tr=0 ts=69818d25 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=gBkj9RZkAcI1HbXH1KoA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: pTnK673BXFBKI0rRqN-rJBxcCRhvI6dG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA0NCBTYWx0ZWRfX9Zida0dJW+ZD
 SN3WWQ3RLnQuSqAAtkINUHhV9jIrsa+s29oBTgYklJM3t3puawmYziiXQVNa6GYvjqL85TTPmQg
 kWqYzi3FfgE++jq8Mrbkf+W/fkz3eyIXGz22Y1HNPQIJmmu8NfquNGFAd898up5lSVOfGqdapHr
 hu17Avuh6z+vDFa9v8PRTwnZJM/N2CZJEzAd5UlGtcCvBIAOxZomShz3ggXNY4Dv9UafTdwZSne
 3i3C2DGcGPPBTqn1QODYsSuWI47uf+YoBdEwRnzpZHPHN0dFiCP99x/y6COVHJ9Ig6rco3XH02m
 1xzQzEdPlJ6wzq3pqcdYHZc5aTu0E/co1yjUpFmuIA373UDYq5Y4Wgn8amI2MYStQFZySpCNFfx
 PO31Nm9SWGfDte52MV7KznO9Sk7PeLMz6MJoEKz7lqOxOsv+sBf5t/z6lz3FQ0lnBegySgAUWA5
 EtoyUiqXq8LTszy9zQQ==
X-Proofpoint-GUID: pTnK673BXFBKI0rRqN-rJBxcCRhvI6dG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_01,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 phishscore=0 adultscore=0
 suspectscore=0 bulkscore=0 impostorscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602030044
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262052-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.61.12.232:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3AF08D4D6D
X-Rspamd-Action: no action

Add interrupts to enable byte-cntr function for TMC ETR devices.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index 0b154d57ba24..75a468ddbf53 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -2776,6 +2776,9 @@ ctcu@4001000 {
 			clocks = <&aoss_qmp>;
 			clock-names = "apb";
 
+			interrupts = <GIC_SPI 270 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 262 IRQ_TYPE_EDGE_RISING>;
+
 			in-ports {
 				#address-cells = <1>;
 				#size-cells = <0>;

-- 
2.34.1


