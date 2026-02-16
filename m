Return-Path: <devicetree+bounces-265768-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OMqQHGAgk2kX1wEAu9opvQ
	(envelope-from <devicetree+bounces-265768-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 14:49:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E65D14418E
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 14:49:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E58AC307811E
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 13:44:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69DB03128CF;
	Mon, 16 Feb 2026 13:43:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jTGFvdfC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IFnKtuxp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0378F30F542
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 13:43:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771249408; cv=none; b=g3Pn7TwSnmOfD5WUlLjKj9S9zB8wqnv2WjpeWszMTiKOhsThQYYiR4SrMKIro7fr2B5ERMRZWUdcyYUalrUD87WPVaEAWmJ41gZ3fFifQVJuMCXAnyMu8cSZVYJ0KbDTVdShHHDUkBWZoeU8NZ61e8ujpAMnUb9NdCrte05pQk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771249408; c=relaxed/simple;
	bh=WQrvTYPmJyy+pBriDd9DtxHhgqJh7XCWBKiXgMM+6zw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ohYP5evXyTXU1JPrCTiIfkiZqyJjRh24DvMnqpm5ppIFy4bqNcduAKmkH63oMxvUTfSUbkKncnSEILERBhkp8Gr8E0aqXcRUmgbQSxATwTmLJOqtEiQQoiivb+WUBX9ZLcXLrEwLS6tioMMp5B3DCpe1wP0Um5yR7/cFiLUsDgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jTGFvdfC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IFnKtuxp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GBQHpx3685271
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 13:43:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9/Dm47IuIOXrcOG414u+9L0nB7hzx5MBSgBwzvUVWrc=; b=jTGFvdfCT5EFgpeG
	vq91T6fa+RYSAYNXtzkyCPzQt9tMp4WRIfMhoYedD6C+DeOlMtMQrpgapYAEP3Z0
	qXPWP52MoY7ByZpzQ2/YQiQksuTqZ1jw9L39D38GozXt2IiHqTmCT3yKICiEDYDP
	nKZi+/hXOZ1I4uoxJw02rBPzlRtt67TUtrxpYfp97GaYOjBt9vca/EQzGg5TKfii
	KK/Z+9bvHsnnF2r7CB6zSBrIVeZmY/SGcjTatrLFngSTXfL8AuDj5jGJLwpfhcEg
	c8txELtzF4jQk/3+/eYCFooVS5WOOrCc/Bkri7W592ZHSnt7q5oA70c2YJsVc5E9
	w007ig==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cag24cqku-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 13:43:26 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb390a0c4eso2836716885a.1
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 05:43:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771249405; x=1771854205; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9/Dm47IuIOXrcOG414u+9L0nB7hzx5MBSgBwzvUVWrc=;
        b=IFnKtuxpPp/ahMSMSIfEUN1UJic8xjL+yVv0SVICunj2+sCPFVRvOT771RlwQx8BtU
         r9hSCp+fKw+6L8fw+CrQzQMBs0DoO9CpYloOzfz/51Kxve8sL7OoH82A5b1JmtlmipzY
         wWeK/BgRIdFZXRFhpd5kketO8Gpqumi9XII7b5rFlo/+urJ6jwp7Y+liQBOpVYWEnxVI
         poqe8xm617o9YlppVrSxWekgpWPONAMaU4VQJABMoXrVcK17I5Br12ewiO3CbCIElg2K
         U2zY2py0AkejJVGzbHD+jf83osn/ogIotcalC6+vM2WtljS86dpZfCMQaaJOwllxx25H
         tDFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771249405; x=1771854205;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9/Dm47IuIOXrcOG414u+9L0nB7hzx5MBSgBwzvUVWrc=;
        b=F8sF/hMu2/pcw2I2r5rWCIoAtqd++pMN2ZRuxR5nibQtd8rMy5JfaMTH2RMX2aQKTj
         PPwLwy6pKJC5hmzUJcAeD4qLp1egbIn1Lfcvt/1hXBmtno6s1hQHT+sV0SIyajPCOUKT
         NZFZY0x6LMwtP43GBHDj6H1Kzs8tUPFZijIx5CuhBXjmMNtAvgW2k9RNt3YJG2+xklDc
         SgNYb4vLK/aIoJNVzdKKzr56yYsCyJFFha0IPBMT5U4ES77Yp8NLMeobycA19rWuQqrm
         Ee9eYjDszFr/J6J9+gXC5DxDXpgA9U+daHgLScLRVddZV4m6ikXPeZ7/ZSJc+i8NBlb8
         5VPg==
X-Forwarded-Encrypted: i=1; AJvYcCWyvl73jbcqKMVgQgLhyog7mrtvbPuRlwRSbiEs+zhuLQi39I8M+7XWvuNpB6/9P6b3EvMNYO5OofNo@vger.kernel.org
X-Gm-Message-State: AOJu0YxYg1k4zzHBf3079PyUvjOfT7gX08LJQJdhPcfyFD7+jktCtZ9w
	40essZRDvTvWRvBFHQlcS1gC3p2cPXMw7rJcUPjUzSMCQ8BUbn+zwtYbluNjXsWh7djCmsuexbb
	TKJX65/X0kjzPTopifQ0F3CruJkCKIDQKISU8rQhG81AXFMNqxNZXWnM85nZYWlRA
X-Gm-Gg: AZuq6aITpF+D2eOmG4rj9q8xt6prKLDcPjUHXQWeWE/sE962UeL9ymdHIty8VPqwDx/
	Q2U5d6mRheGYdwwqvbUR/45Wtp63rKS44kwcPSfcBKj10EbU7Ln9Zz71LClWXrOkuRsfr/2X3/P
	k1M54gO/Z2LyDjh4wXDXyVw4l3qg9wyjco0O65slUMUeNogJ5v9dNNbwuj73z5Yen5gTTf4YKF7
	q2WFkFgcyKWH/oFvD/uFpADAmAyga8zm3K0iNUUg/zV778D4bWhbTluf9MkW3K2grMJ0cEW7Rot
	vQWokQDROOIu26dK0nnAFKaNP7W/W0A2Lhz7BRR4JZv9zbkG0DIZdxLNDFCWCXLDgVlS0Eebko+
	GMDYGbCPWKhEnptQopGMxrCYstbjctA==
X-Received: by 2002:a05:620a:1aa3:b0:8c7:c25:9e53 with SMTP id af79cd13be357-8cb4c0065fcmr961296785a.59.1771249405382;
        Mon, 16 Feb 2026 05:43:25 -0800 (PST)
X-Received: by 2002:a05:620a:1aa3:b0:8c7:c25:9e53 with SMTP id af79cd13be357-8cb4c0065fcmr961291785a.59.1771249404785;
        Mon, 16 Feb 2026 05:43:24 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796a6c1bfsm28883025f8f.13.2026.02.16.05.43.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 05:43:24 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Mon, 16 Feb 2026 15:43:06 +0200
Subject: [PATCH v3 4/6] clk: qcom: rpmh: Add support for Eliza rpmh clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260216-eliza-clocks-v3-4-8afc5a7e3a98@oss.qualcomm.com>
References: <20260216-eliza-clocks-v3-0-8afc5a7e3a98@oss.qualcomm.com>
In-Reply-To: <20260216-eliza-clocks-v3-0-8afc5a7e3a98@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1914;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=eXC0lgJuWJT7B+zM9iiZZ9PgmcyVmNPid1R442OFsUU=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpkx7wkXIDndP5a0AU3KbrqKob7mS8kQG64JGUn
 Fe2Xc0Z4CWJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaZMe8AAKCRAbX0TJAJUV
 VmkaD/4gFPul2Gxuu1jiGioWPM1Ru5XSEXtxKBL3Wm1OQChdI23BENSr+W6RZ0BwYEQHz+24GqC
 M2YvLvYkicGhjbu33koH5T7iL0RJAOCU5VG7tW7+tobpiL8VPEv/D5YVlHIOoEzLOnSKbeItWAD
 FL9Grd/mDGJu/tXoJ3QnmuPX1qWVdq1B5pJRcPzNdMU+TyKw07L8vF6E6UNNtALZBRLOTn84B/s
 /BLcKTunnMY1f/kp/+qIDxr9oZjM8jlMyHLSY5Vt7NBOaZAqLCCFihgwZrWjFCKHxFTVLAdFliH
 fuiujvHVSYtMSmsA0edfDHuAV2C2x9vSq5XR1kJnlzJhYoUp31sJhry26j2AXPikRjo+4Js6upP
 KPn3gznPWJmhLRn78ba9pklI1ARnbdddXC1R21czg5pirkdE2kgYSrNjbrZECKQQyzakAkeLX5z
 TMXFOHoxZ0FnbpKlSTJ7M6mV3ch9cQjbnQDAQjuWLnIms4sZjWVcCfsCj1y74VZNlxEYgtTo0/V
 eo5otRHtejO81eUohBlRyDWS/vo/92DAp2JUgprv/Qm6FfrCaWLpsMoHm/PTu313FVhDLFvVHgu
 bZEI+s0Km9Tq3RNAMwfC3lCKHCdacuuMxQhloj31KfpgujkUSlLnlr+Chbmvja3qtRM/9lwN6ZM
 jsGvkk5dSga9MhA==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-GUID: rgcYwZb48y-B5udh1LdDdKAm3MeVGG9W
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE2MDExNiBTYWx0ZWRfX2RY8fP6oAe47
 5lZThtQKZgTbs8pYqLkkRioi+G9zLyk9u3lWV/z7pDnARibQ0sFdxtDX0bAYFKsyjXRCn2CaBxI
 lSnibsUvd+WGFW2gnXbJt/r08u4BBZdVnHDvr3MP1M+jdMmNvypkcMMrvscgBXk9mrA+oxsRVVZ
 Jc9TDSXqYiEmxgOWguo1C309jy+k/JVYZsxRlWJ2QLJerSfTEqNYzhx1LfTq+PHdX27d6WmCQGi
 HrNNYYIT+P1Mpzxo6srxI0z7jjJ3KyyRC5yrFXBG9eQQuAlJSUvnEH0vbQ/qnMnBP1AeLJncaa/
 d+fgoT2jxEw3vBni8m+cMykisRt5iXvGK5MFwFzqoeJ1UNgjk1G+CH6vA3dSSsL8u6NimgHwsYH
 igK+gTnY4U8/eA/N9HuWi0Rtnl+uI0H4nXUhhXC3DYv47P2Db8jIxzw+T96WmG84Fz/vVF/3S6i
 tDqP2CFWymHSKzMvyTw==
X-Proofpoint-ORIG-GUID: rgcYwZb48y-B5udh1LdDdKAm3MeVGG9W
X-Authority-Analysis: v=2.4 cv=aetsXBot c=1 sm=1 tr=0 ts=69931efe cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=hmjhjfVocwMNySy1NqwA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_04,2026-02-16_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602160116
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265768-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0E65D14418E
X-Rspamd-Action: no action

From: Taniya Das <taniya.das@oss.qualcomm.com>

Add the RPMH clocks present in Eliza SoC.

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 drivers/clk/qcom/clk-rpmh.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/clk/qcom/clk-rpmh.c b/drivers/clk/qcom/clk-rpmh.c
index 547729b1a8ee..cf46a6585174 100644
--- a/drivers/clk/qcom/clk-rpmh.c
+++ b/drivers/clk/qcom/clk-rpmh.c
@@ -940,6 +940,25 @@ static const struct clk_rpmh_desc clk_rpmh_kaanapali = {
 	.num_clks = ARRAY_SIZE(kaanapali_rpmh_clocks),
 };
 
+static struct clk_hw *eliza_rpmh_clocks[] = {
+	[RPMH_CXO_CLK]          = &clk_rpmh_bi_tcxo_div2.hw,
+	[RPMH_CXO_CLK_A]        = &clk_rpmh_bi_tcxo_div2_ao.hw,
+	[RPMH_LN_BB_CLK1]	= &clk_rpmh_clk6_a2.hw,
+	[RPMH_LN_BB_CLK1_A]	= &clk_rpmh_clk6_a2_ao.hw,
+	[RPMH_LN_BB_CLK3]	= &clk_rpmh_clk8_a2.hw,
+	[RPMH_LN_BB_CLK3_A]	= &clk_rpmh_clk8_a2_ao.hw,
+	[RPMH_RF_CLK1]		= &clk_rpmh_rf_clk1_a.hw,
+	[RPMH_RF_CLK1_A]	= &clk_rpmh_rf_clk1_a_ao.hw,
+	[RPMH_RF_CLK2]		= &clk_rpmh_rf_clk2_a.hw,
+	[RPMH_RF_CLK2_A]	= &clk_rpmh_rf_clk2_a_ao.hw,
+	[RPMH_IPA_CLK]		= &clk_rpmh_ipa.hw,
+};
+
+static const struct clk_rpmh_desc clk_rpmh_eliza = {
+	.clks = eliza_rpmh_clocks,
+	.num_clks = ARRAY_SIZE(eliza_rpmh_clocks),
+};
+
 static struct clk_hw *of_clk_rpmh_hw_get(struct of_phandle_args *clkspec,
 					 void *data)
 {
@@ -1029,6 +1048,7 @@ static int clk_rpmh_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id clk_rpmh_match_table[] = {
+	{ .compatible = "qcom,eliza-rpmh-clk", .data = &clk_rpmh_eliza},
 	{ .compatible = "qcom,glymur-rpmh-clk", .data = &clk_rpmh_glymur},
 	{ .compatible = "qcom,kaanapali-rpmh-clk", .data = &clk_rpmh_kaanapali},
 	{ .compatible = "qcom,milos-rpmh-clk", .data = &clk_rpmh_milos},

-- 
2.48.1


