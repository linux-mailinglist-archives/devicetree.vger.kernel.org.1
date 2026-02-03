Return-Path: <devicetree+bounces-262063-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CMgrO/GQgWl/HAMAu9opvQ
	(envelope-from <devicetree+bounces-262063-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 07:08:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7CFD506A
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 07:08:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D0ED03015ECC
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 06:07:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 900B2374175;
	Tue,  3 Feb 2026 06:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UW80fPS0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="d3TOz8fy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C826D36F406
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 06:06:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770098805; cv=none; b=WyHWkJUYEpAzNCIRs8bm1e+rQbXMAiN/vjPZpy1xQVBSxQK3ld3XKpj/ddOosdFKsl+9PbPrBLD0L/50BqL0sN2HEE9VnmWSYd5Ki3C+KuCATFDpWUsDS+16Vk7wo6MRyTntcbDDIUYT9rDbu86BuDDJoBI2h46/YfrVLeWh55k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770098805; c=relaxed/simple;
	bh=mHUaP5NvtmLyzzQH6UoVGlyemVmnqXmW3W36Kns065s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UWCDxRSJo9ThiBGkWc0TxKlyfLavLuPGdKyCaItKQllpnykh7SJQWddZbzzKuHbPyBkNXX86NtV56EtwFS2Df7aO2Mqs6XPzoBuJzBd+iL1r/jAqOcuXjSnkucsX1HRKSKHRgt1pNscUBpWiO1RVF4dCLZV55wDiBn12JAYvXEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UW80fPS0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=d3TOz8fy; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6132kIH63388099
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 06:06:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2Ab85S6IbMI2MQ9YFhaoEHTiwYDDCEDsjuGQbKUiTio=; b=UW80fPS0Un1Jabwn
	5h/jfyto1otk3RFc/N4nOl6HKmvFLGxlO9cs+JNCeFJHCuPv65Rnnirf0uKRM1f8
	vCVwLvXHRnXr3aSo7Yh8MVsd7i6epgtof8hhK0V4pMdqqIN00MoOjGxxK7zGemPU
	VXXgUtWY6IttwSqRFjtquoqYKMplutBc4ZPrxdXduS70AuZOjyMrDcs1LkQPx04B
	Ye4q6zdw+r2KFh9lEIOVcn6CH7puR0qBYnQ1wjcjGFVf2C70AEoeDscMlwTR/XsI
	AxaZRD9QlloMx88N2p+nXgbr+vwKWT+1SI5f4n8QMwNezsaXgoGm6viZlxZJFvvx
	0PetgQ==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2xvbt9hd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 06:06:41 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-2b715b26fc3so7163272eec.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 22:06:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770098800; x=1770703600; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2Ab85S6IbMI2MQ9YFhaoEHTiwYDDCEDsjuGQbKUiTio=;
        b=d3TOz8fy+Qw5Ywn6zdoVPDyba+8Tu/326dxYnHndHawv9v8BqKL9bjzFyAsxRWv3XS
         lH6U4VGYEuah5ylukUAIDW4j3YS6R5Qyn7FjyniZQ8/+XtRyaOVNJWzIZ0mclmwQYtgK
         ZtuQSbsCFLkX43HQkQQroVOD2clRbnECQlPgX/9SfieuQI4QQOTkT/NAoguQk5DxQukR
         9UMSJQ+rwt5+ChtuCHMxnoVMpPyQGRNXBDkTaCvpOg2XuhN4xN8S8jVi6iGhFo5+YRja
         5DA6GlpqcY6q7nW+KM3lYnnrO2ooh3KAwdmY4VVHoBFhhxu+FrAub3k6DL2UjhtAXoqB
         0unA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770098800; x=1770703600;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2Ab85S6IbMI2MQ9YFhaoEHTiwYDDCEDsjuGQbKUiTio=;
        b=m1EEhFe50e2rTLDqU2y0E3fME6XjKIvLM4lpSupRVORln9QI1Fo9Gl4za1B3yLXF8k
         zO86H/ZbZbf7f9hdvY0/sNZLw+F1MQI4uErB7wuzJp8LyxdShignKHAlaLP7Y/8Gw1+y
         AvWnEIbPnv7e67EVGTjor7Y9N69xBqwohS5ihGbgDJ3y2hQkYgwkW5m5v51wb4AK8zdC
         p0E5UE86UqjBTJi2vu0XjArgfMn9gZksTUuOypTdniqQs/1/SFkcuVRYsgNQPcV5I2bk
         yw+z4qpkD/aAf4NfqIsRHS3Z1eP7H3ru4NpfrU2UNCI7EdtG0ohO4WkTDtyykFFou54n
         doQg==
X-Forwarded-Encrypted: i=1; AJvYcCU+VUpFJV0N+DajFQIi2/gRI2vsGKG4JyFO/fpp0sFzne0IYpoLZuWSFRlYt35ko795b43Oq/v5W50A@vger.kernel.org
X-Gm-Message-State: AOJu0YxQplBLX4R3lZaSN4OB3WFByCht243m2mNUoveGWj5xjg7EW4Go
	p21oCKMoKo9RSpUMuF0JxLqFkYx/xltzRHbRRVCYbnIreZzRiH9XxazFEv3AiNPQ6epP8DEcDDV
	22AjlA2dPgdExonJ6iksGsITDZMF1rW8/jnFv1hnEzN94l7ZiLj3EBm+OAj/VTP//
X-Gm-Gg: AZuq6aK01lOtjnYprqTCDJ22C8FSNS57vIj4y+lR869s6r6V1Jmykfzb3hVnu6IQYm4
	OmLbTfA/JLlHtso/0BWN/TD2Ls8rHohN/rjLCTht9v7GR8kGQUJF9WJ4STiQBgu512CQlY5oEgS
	I7KcB5GL9c6dmcIHArr2EGVOD3zLTNKCDRJ42hpxdNZ7eQhpHS0Q6/0j8JIjixSKLq8AyxTgMt2
	1QrZFqsJAjmYyhdRQN2AH5KDrmChYlg65Lh22CY1b6lK8ROurKAlfDmfPR+gVmK0+j/KDvVPQbe
	CRaaJaQJ6LjvK54gz3pN8RQiXtjiDvryFBWwvIh2MXdDAlqnHhC2iuWJf7Z+at+jVxmSGuan0oR
	0z07xDXrDmwaJQ0eNwhSzGbU2kZlMdaCzwNDsvj9WYq00HpWsnwfaPwqx6T0K
X-Received: by 2002:a05:7300:e7ab:b0:2b7:3281:6c59 with SMTP id 5a478bee46e88-2b7c8663d85mr6318550eec.17.1770098800235;
        Mon, 02 Feb 2026 22:06:40 -0800 (PST)
X-Received: by 2002:a05:7300:e7ab:b0:2b7:3281:6c59 with SMTP id 5a478bee46e88-2b7c8663d85mr6318533eec.17.1770098799654;
        Mon, 02 Feb 2026 22:06:39 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b8283def01sm417499eec.34.2026.02.02.22.06.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 22:06:39 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Mon, 02 Feb 2026 22:06:25 -0800
Subject: [PATCH v5 08/10] arm64: dts: qcom: kaanapali-mtp: Add audio
 support (WSA8845, WCD9395, DMIC)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260202-knp-dts-misc-v5-8-02de82bf9901@oss.qualcomm.com>
References: <20260202-knp-dts-misc-v5-0-02de82bf9901@oss.qualcomm.com>
In-Reply-To: <20260202-knp-dts-misc-v5-0-02de82bf9901@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com,
        Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-3d134
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770098787; l=7373;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=ameuWwKDmYuonMpUCitEB9BIFn0ezp5L7tJ6EyXrZQc=;
 b=ztW3gR1ZV+qfcX+zyMl8MjSq3UNPNSGjkPkFsGYeNNgiC6J5S4+upbI1SycuBEfaIttghwz84
 tYIf0xMeN+gBOtVlSK+nTvctnfozPZJrc8HeoXgzHs4XfNPGer1PSsN
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: PDblkCrGSWsPsfl4BkZxfPHeX924ryw1
X-Proofpoint-ORIG-GUID: PDblkCrGSWsPsfl4BkZxfPHeX924ryw1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA0NyBTYWx0ZWRfX6HYkxTZr3qY1
 z8cyTSE3nDl45/4+1Amwt2WvqjPbfh564KQX72Pzrn1sz/i5NeKeAORIFT9nRnlWlhRPyahh58Y
 naeAf4UAu+zvkhIz2kabQSdgakC9DCVd+QI72+RN6ynBBNsLR8fJc8OG0LS/3JIvsr/0zOdptaf
 sNabSlZySSTLPAApGn07cxoW9a0sRao+Qje/M44A049IWmLpNTn0XSrLZXnuAFqH7yjYa0enbIS
 3Twm/yV7gJdg0CdPkTA8lz1/XOd2BOhfS0WWhzGOzXUZrLyUaJSuvaK10ThhKr5f/mH0EM/718S
 lfdO52j0XC3DJmBAuex+tSoekrAic8/YU8UCArV4548V+Ep9804vRNuQ3uX8D6CBal1jzy1HcTr
 ah4tKQN03rsGRDiBOMlhCtSq2UXsNon0LTgeu1lRsBsMqDedYpNasyjaqYvihU8Lhhihfp07QN1
 EbIZAmmMN8D/SSrAjPg==
X-Authority-Analysis: v=2.4 cv=AurjHe9P c=1 sm=1 tr=0 ts=69819071 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=lxMpYmIrUrCHLM_QX0YA:9
 a=QEXdDO2ut3YA:10 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_01,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 phishscore=0 adultscore=0
 malwarescore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602030047
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-262063-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,0.0.0.0:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jingyi.wang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1F7CFD506A
X-Rspamd-Action: no action

From: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>

Add support for audio on the Kaanapali MTP platform by introducing device
tree nodes for WSA8845 smart speaker amplifier for playback, DMIC
microphone for capture, and sound card routing. The WCD9395 codec is add
to supply MIC-BIAS, for enabling onboard microphone capture.

Signed-off-by: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kaanapali-mtp.dts | 226 +++++++++++++++++++++++++++++
 1 file changed, 226 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
index 3544f744fd1d..bc57935c042c 100644
--- a/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
@@ -52,6 +52,115 @@ bi_tcxo_ao_div2: bi-tcxo-ao-div2-clk {
 			clock-div = <2>;
 		};
 	};
+
+	sound {
+		compatible = "qcom,kaanapali-sndcard", "qcom,sm8450-sndcard";
+		model = "Kaanapali-MTP";
+
+		audio-routing = "SpkrLeft IN", "WSA_SPK1 OUT",
+				"SpkrRight IN", "WSA_SPK2 OUT",
+				"IN1_HPHL", "HPHL_OUT",
+				"IN2_HPHR", "HPHR_OUT",
+				"AMIC2", "MIC BIAS2",
+				"VA DMIC0", "MIC BIAS1",
+				"VA DMIC1", "MIC BIAS1",
+				"VA DMIC2", "MIC BIAS3",
+				"VA DMIC3", "MIC BIAS3",
+				"TX SWR_INPUT1", "ADC2_OUTPUT";
+
+		va-dai-link {
+			link-name = "VA Capture";
+
+			codec {
+				sound-dai = <&lpass_vamacro 0>;
+			};
+
+			cpu {
+				sound-dai = <&q6apmbedai VA_CODEC_DMA_TX_0>;
+			};
+
+			platform {
+				sound-dai = <&q6apm>;
+			};
+		};
+
+		wcd-capture-dai-link {
+			link-name = "WCD Capture";
+
+			codec {
+				sound-dai = <&wcd939x 1>, <&swr2 0>, <&lpass_txmacro 0>;
+			};
+
+			cpu {
+				sound-dai = <&q6apmbedai TX_CODEC_DMA_TX_3>;
+			};
+
+			platform {
+				sound-dai = <&q6apm>;
+			};
+		};
+
+		wcd-playback-dai-link {
+			link-name = "WCD Playback";
+
+			codec {
+				sound-dai = <&wcd939x 0>, <&swr1 0>, <&lpass_rxmacro 0>;
+			};
+
+			cpu {
+				sound-dai = <&q6apmbedai RX_CODEC_DMA_RX_0>;
+			};
+
+			platform {
+				sound-dai = <&q6apm>;
+			};
+		};
+
+		wsa-dai-link {
+			link-name = "WSA Playback";
+
+			codec {
+				sound-dai = <&north_spkr>, <&south_spkr>, <&swr0 0>,
+					    <&lpass_wsamacro 0>;
+			};
+
+			cpu {
+				sound-dai = <&q6apmbedai WSA_CODEC_DMA_RX_0>;
+			};
+
+			platform {
+				sound-dai = <&q6apm>;
+			};
+		};
+	};
+
+	wcd939x: audio-codec {
+		compatible = "qcom,wcd9395-codec", "qcom,wcd9390-codec";
+
+		pinctrl-0 = <&wcd_default>;
+		pinctrl-names = "default";
+
+		qcom,micbias1-microvolt = <1800000>;
+		qcom,micbias2-microvolt = <1800000>;
+		qcom,micbias3-microvolt = <1800000>;
+		qcom,micbias4-microvolt = <1800000>;
+		qcom,mbhc-buttons-vthreshold-microvolt = <75000 150000 237000 500000
+							  500000 500000 500000 500000>;
+		qcom,mbhc-headset-vthreshold-microvolt = <1700000>;
+		qcom,mbhc-headphone-vthreshold-microvolt = <50000>;
+		qcom,rx-device = <&wcd_rx>;
+		qcom,tx-device = <&wcd_tx>;
+
+		reset-gpios = <&tlmm 161 GPIO_ACTIVE_LOW>;
+
+		vdd-buck-supply = <&vreg_l15b_1p8>;
+		vdd-rxtx-supply = <&vreg_l15b_1p8>;
+		vdd-io-supply = <&vreg_l15b_1p8>;
+		vdd-mic-bias-supply = <&vreg_bob1>;
+		vdd-px-supply = <&vreg_l1g_1p2>;
+
+		#sound-dai-cells = <1>;
+	};
 };
 
 &apps_rsc {
@@ -665,6 +774,14 @@ vreg_l7n_3p3: ldo7 {
 	};
 };
 
+&lpass_vamacro {
+	pinctrl-0 = <&dmic01_default>, <&dmic23_default>;
+	pinctrl-names = "default";
+
+	vdd-micb-supply = <&vreg_l10b_1p8>;
+	qcom,dmic-sample-rate = <4800000>;
+};
+
 &pcie0 {
 	pinctrl-0 = <&pcie0_default_state>;
 	pinctrl-names = "default";
@@ -715,12 +832,114 @@ &sdhc_2 {
 	status = "okay";
 };
 
+&swr0 {
+	status = "okay";
+
+	/* WSA8845, Speaker North */
+	north_spkr: speaker@0,0 {
+		compatible = "sdw20217020400";
+		reg = <0 0>;
+		pinctrl-0 = <&spkr_0_sd_n_active>;
+		pinctrl-names = "default";
+		powerdown-gpios = <&tlmm 76 GPIO_ACTIVE_LOW>;
+		#sound-dai-cells = <0>;
+		sound-name-prefix = "SpkrLeft";
+		vdd-1p8-supply = <&vreg_l15b_1p8>;
+		vdd-io-supply = <&vreg_l2i_1p2>;
+
+		/*
+		 * WSA8845 Port 1 (DAC)     <=> SWR0 Port 1 (SPKR_L)
+		 * WSA8845 Port 2 (COMP)    <=> SWR0 Port 2 (SPKR_L_COMP)
+		 * WSA8845 Port 3 (BOOST)   <=> SWR0 Port 3 (SPKR_L_BOOST)
+		 * WSA8845 Port 4 (PBR)     <=> SWR0 Port 7 (PBR)
+		 * WSA8845 Port 5 (VISENSE) <=> SWR0 Port 10 (SPKR_L_VI)
+		 * WSA8845 Port 6 (CPS)     <=> SWR0 Port 13 (CPS)
+		 */
+		qcom,port-mapping = <1 2 3 7 10 13>;
+	};
+
+	/* WSA8845, Speaker South */
+	south_spkr: speaker@0,1 {
+		compatible = "sdw20217020400";
+		reg = <0 1>;
+		pinctrl-0 = <&spkr_1_sd_n_active>;
+		pinctrl-names = "default";
+		powerdown-gpios = <&tlmm 77 GPIO_ACTIVE_LOW>;
+		#sound-dai-cells = <0>;
+		sound-name-prefix = "SpkrRight";
+		vdd-1p8-supply = <&vreg_l15b_1p8>;
+		vdd-io-supply = <&vreg_l2i_1p2>;
+
+		/*
+		 * WSA8845 Port 1 (DAC)     <=> SWR0 Port 4 (SPKR_R)
+		 * WSA8845 Port 2 (COMP)    <=> SWR0 Port 5 (SPKR_R_COMP)
+		 * WSA8845 Port 3 (BOOST)   <=> SWR0 Port 6 (SPKR_R_BOOST)
+		 * WSA8845 Port 4 (PBR)     <=> SWR0 Port 7 (PBR)
+		 * WSA8845 Port 5 (VISENSE) <=> SWR0 Port 11 (SPKR_R_VI)
+		 * WSA8845 Port 6 (CPS)     <=> SWR0 Port 13 (CPS)
+		 */
+		qcom,port-mapping = <4 5 6 7 11 13>;
+	};
+};
+
+&swr1 {
+	status = "okay";
+
+	/* WCD9395 RX */
+	wcd_rx: codec@0,4 {
+		compatible = "sdw20217010e00";
+		reg = <0 4>;
+
+		/*
+		 * WCD9395 RX Port 1 (HPH_L/R)      <=> SWR1 Port 1 (HPH_L/R)
+		 * WCD9395 RX Port 2 (CLSH)         <=> SWR1 Port 2 (CLSH)
+		 * WCD9395 RX Port 3 (COMP_L/R)     <=> SWR1 Port 3 (COMP_L/R)
+		 * WCD9395 RX Port 4 (LO)           <=> SWR1 Port 4 (LO)
+		 * WCD9395 RX Port 5 (DSD_L/R)      <=> SWR1 Port 5 (DSD_L/R)
+		 * WCD9395 RX Port 6 (HIFI_PCM_L/R) <=> SWR1 Port 9 (HIFI_PCM_L/R)
+		 */
+		qcom,rx-port-mapping = <1 2 3 4 5 9>;
+	};
+};
+
+&swr2 {
+	status = "okay";
+
+	/* WCD9395 TX */
+	wcd_tx: codec@0,3 {
+		compatible = "sdw20217010e00";
+		reg = <0 3>;
+
+		/*
+		 * WCD9395 TX Port 1 (ADC1,2,3,4)         <=> SWR2 Port 2 (TX SWR_INPUT 0,1,2,3)
+		 * WCD9395 TX Port 2 (ADC3,4 & DMIC0,1)   <=> SWR2 Port 2 (TX SWR_INPUT 0,1,2,3)
+		 * WCD9395 TX Port 3 (DMIC0,1,2,3 & MBHC) <=> SWR2 Port 3 (TX SWR_INPUT 4,5,6,7)
+		 * WCD9395 TX Port 4 (DMIC4,5,6,7)        <=> SWR2 Port 4 (TX SWR_INPUT 8,9,10,11)
+		 */
+		qcom,tx-port-mapping = <2 2 3 4>;
+	};
+};
+
 &tlmm {
 	gpio-reserved-ranges = <36 4>, /* NFC eSE SPI */
 			       <74 1>, /* eSE */
 			       <119 2>, /* SoCCP */
 			       <144 4>; /* CXM UART */
 
+	spkr_0_sd_n_active: spkr-0-sd-n-active-state {
+		pins = "gpio76";
+		function = "gpio";
+		drive-strength = <16>;
+		bias-disable;
+	};
+
+	spkr_1_sd_n_active: spkr-1-sd-n-active-state {
+		pins = "gpio77";
+		function = "gpio";
+		drive-strength = <16>;
+		bias-disable;
+	};
+
 	pcie0_default_state: pcie0-default-state {
 		perst-n-pins {
 			pins = "gpio102";
@@ -743,6 +962,13 @@ wake-n-pins {
 			bias-pull-up;
 		};
 	};
+
+	wcd_default: wcd-reset-n-active-state {
+		pins = "gpio161";
+		function = "gpio";
+		drive-strength = <16>;
+		bias-disable;
+	};
 };
 
 &uart7 {

-- 
2.25.1


