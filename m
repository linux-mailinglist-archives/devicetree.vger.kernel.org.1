Return-Path: <devicetree+bounces-259390-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eI3yKl0ed2lDcQEAu9opvQ
	(envelope-from <devicetree+bounces-259390-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 08:57:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 205FF8527B
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 08:57:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E40DA30501BB
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 07:50:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50DE7318B83;
	Mon, 26 Jan 2026 07:49:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AmYeYEYe";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UEqSGAmm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E17213176EF
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 07:49:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769413758; cv=none; b=WZpW3NskY0Qo+KOCDl/Tf2g6Tj+hsztEX92GKbIfgUmMd2hv/1XO9nqkrw5Pj1EatWIkVG9CFtK/XFae5q8fuiKCyTk+icu17QgTlpx4l9+s4tHyujewW9MRo6IIGOcnZVrUfohNvjM3PQxH/Bd9sBlooz1mU2lvU10bBC6ksmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769413758; c=relaxed/simple;
	bh=U3SBm8Q4F2Lqg46nftP77Qbyf63TqJWnGptxyfW3r6I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=r/59xwpG8u6qeQwc+Zops9sYTSd5hcmrSHk0mArorfUek7uUzcGmA4MSTnkPNMJqoRxRlJbimAMCod6LEzZ+TVC0doXtsb06DNNJU/gYdTXoLfdsSDZkGFv1tSC48/0mc5fsaUoE0CvNJg8wCFkhd3om/Dw3qeU2VH8mUzubItg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AmYeYEYe; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UEqSGAmm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60PNwJMt708495
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 07:49:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2hUWnOSTgpb39HiN4iScZAjggx5kZGetEG2O1nLvCqo=; b=AmYeYEYehVtu71H0
	KIhpYPSDb2kinA3gMeSwg8DB95QS6Kw9LHMGlfF/XhKsvlMc85Sg7s5gTkDI77al
	xq2OMmGNboe6LCX9N38mSxuB4o7iBUslZIbHvZzA8o1aKhcyxKGYNDLrB2aTBpEP
	R49pjvjaYI8abpBD4D3xOevnRRo7lUgMW2Z7Xllh89kq2lWaRsJAvff9WM9Raotv
	sou+/1bS9VhAZijQUmWSrkVasYh1/On/baMRUFOMca99suFQFiswiz4AOAsGYTrL
	ozsP1rKt6rqxFN4o7wJ696Forka5PrMpg6je/NGTguf4lgocyZBfWYy3M3HVhZLb
	NrZX5g==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq9turwa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 07:49:15 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7fc82eff4adso3285883b3a.1
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 23:49:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769413755; x=1770018555; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2hUWnOSTgpb39HiN4iScZAjggx5kZGetEG2O1nLvCqo=;
        b=UEqSGAmmOVAhri8ONhV2vDZ2fZlCrN4uDGze2CvsnKQGiyKiSY9RHGj7UVRY0GGnhp
         hqQU4KTcRx1x/iXMzUPd6Mabt8ZqLE49TLgGYK7ehBrO4V19rJxkFmp3nBqab/XAAHSE
         qLI3IX+OV1z+nGUT0FwD3USbVLSlzDij4PSS7k5nWJbpfOmWAeugiJBrhx32ljHEW9pr
         W4y5kYMG6kSA6IHO1/gfvLBU4G9CBFlfM+7C/RV8nbqcJ2Z5yQ/CmmW9zuERAmGva29E
         CCordeEOBOw/MrDxey0WlqKtYIt2RJ1ArdcK/HGFeU+B0uMjtnbqRpS//oFcYp5+KTJH
         JL3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769413755; x=1770018555;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2hUWnOSTgpb39HiN4iScZAjggx5kZGetEG2O1nLvCqo=;
        b=BOUx8O/N2PLxNwM2JFRYJigniEMn3g+svgrGFT2EbjLb8orC0auV0OzMAtJ9Rp27j7
         TxHvjs0twzlXGRhEr5H0y5jNaHsBQYWK7xEdPQ/9hfzeWNMS3e7ya7LBPfpTNcjIycnS
         MPxsEOXs7pOxZifQ4HB+xecFRD9dLX1oJoh9trAlxYyWqbXdxii6LdedyHO55qA1aTKy
         JK8kzYEvDzRjq1ez+a8Nvul568GqVDoLbr0+TZgoqco2lWfY2BKSVaQ56UyDVIV+BOPS
         7F2+wGgDvo8Q6cEMHSCcTmKJ+r57uFmyxWrvvMsHTFcR9fIMYeoiKCsX9DE40dYD57F3
         w09g==
X-Forwarded-Encrypted: i=1; AJvYcCXjFUZcrkblPlbu7hhA1m7RqnzGLf7KM3kFCoU9S4roBgdVXSUz28XC6kNTcSfWMuTiZkcigic+i6BY@vger.kernel.org
X-Gm-Message-State: AOJu0YxNOPnZwCNgvb5YKay5DI8o4xtbwo/XLCQYANi+1MjA2MTlEDvU
	f8G61VRjkHPpOQUN6Oo3N8xqZ7JM9MD2+DuwRfQ/kGKOMnFRKxMcT4e9Xy/JJYHMjSIxu5ZvKuL
	7rfYntNMliRUR0X+Fw1husfAzrrqct706SVNMqsF33njzrJTuuA1zQAdC/4sXcDhA
X-Gm-Gg: AZuq6aJ2gpxOjLvvz6S6CAMrimhwNY1R74mvKuqG6Ed2C6IbjjT1Nt2i4fUZeUicRqZ
	XdTh2HdhY9c/dR7CVEqoi0Jj9u+HPwWh+dkQjFSKdR6fbo675+yly/ZTTFI1n4f12w3AK41pld8
	jyedO4UBSg2JUTMvjoxsdZRUMNnlBmFmxlgRJlGwMt2JDJGD+1qmbJmekkAJupDRG5NS5P6lrcl
	O7JFGj6k9wfbXR+zq+BVnaEYHvhNpCO8mOw2IPfEh3X3uYScT2MtT40jCri9Ju5ewudIduDfuDg
	prn7PlYr8VWHkwtKXejj4zN97TzSOqmcE47KkOM5g7Q3GtztNA/4EVVnQAZs+3S2Mq8i7Cj12G2
	vMkoFly72j8yTjKhjpY8gMhdQrFA+UnqJ+2EKbHg2U0FpgfADDeIhjhboKoxGrSSsvyCIYVgxIf
	ln
X-Received: by 2002:a05:6a00:8088:b0:81d:9862:a140 with SMTP id d2e1a72fcca58-8234114ddd6mr3939374b3a.3.1769413754705;
        Sun, 25 Jan 2026 23:49:14 -0800 (PST)
X-Received: by 2002:a05:6a00:8088:b0:81d:9862:a140 with SMTP id d2e1a72fcca58-8234114ddd6mr3939338b3a.3.1769413754236;
        Sun, 25 Jan 2026 23:49:14 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8234fd9a5a7sm1223418b3a.63.2026.01.25.23.49.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 23:49:13 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Mon, 26 Jan 2026 15:48:00 +0800
Subject: [PATCH v11 8/8] arm64: dts: qcom: lemans: add interrupts to CTCU
 device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260126-enable-byte-cntr-for-ctcu-v11-8-c0af66ba15cf@oss.qualcomm.com>
References: <20260126-enable-byte-cntr-for-ctcu-v11-0-c0af66ba15cf@oss.qualcomm.com>
In-Reply-To: <20260126-enable-byte-cntr-for-ctcu-v11-0-c0af66ba15cf@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>, Mike Leach <mike.leach@arm.org>,
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769413706; l=769;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=U3SBm8Q4F2Lqg46nftP77Qbyf63TqJWnGptxyfW3r6I=;
 b=c3fl1Yn5d+S/JHZtZgPGa7S7m6K3H/GIa1tLJGLcn+2zhh5RXPn5Yb5BBM24+SyvhJ9NHbxLI
 WUStbQLUzctDbGOvcdjUgxHbg9ibXBmtMIbL9fRjVw0A2+itS9OMGgy
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDA2NiBTYWx0ZWRfX8p7F088R6j1N
 I7urH6h5Hx4B79kZpi1fePYTxk0NMmUZa78SHr3FW4A5SS9pGqIAv8FXl4/podDs/jgCB/fn9lD
 jIxY4ZdvxWy2O67zWxIa0HIh+Ou2w0VdE9Tull89v2LjMWl18q+3hP5i4gGWNVIWGuDOkkYmnbs
 AnwU3YcIpJPRXo4TfUnfC47WReHmBofWKoHvV9hifuFIFerIwxoaurnG/ry0eDZVsEpDE9ec+Le
 yDwh9xas8X5oa5KlAhIqYxvdJBWYqiDoW6vCsHm4MWAsV/MNBTZfyKyVhB6hXwltn1sr8PN47u1
 ocFiImUzk92s6f8C7O8kHIP+HF6/1j70abazqBLVH7WcA3XrF5TdI/W72AdVtDWq6w6FHEb90xV
 aIyCO4brhggSX22rsFjF5JLM14u1HCptm1lLXxjOyJk5TyIQGdNNF94NyayLlQcI8vHzxeswrah
 L+0DwL42sESDbnnd9rA==
X-Authority-Analysis: v=2.4 cv=QN5lhwLL c=1 sm=1 tr=0 ts=69771c7b cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=gBkj9RZkAcI1HbXH1KoA:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: ZmSwKNZQUlUNvNst3t4HBr522E6liMNu
X-Proofpoint-ORIG-GUID: ZmSwKNZQUlUNvNst3t4HBr522E6liMNu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 adultscore=0 malwarescore=0 suspectscore=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601260066
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259390-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.61.12.232:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 205FF8527B
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


