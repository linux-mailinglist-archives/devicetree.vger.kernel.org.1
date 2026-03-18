Return-Path: <devicetree+bounces-277347-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJGMJIbHumlobwIAu9opvQ
	(envelope-from <devicetree+bounces-277347-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:40:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CEF12BE6EC
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:40:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4788530107A9
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:40:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D2AC37AA7D;
	Wed, 18 Mar 2026 15:40:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WKzZSSBU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FhxVNbpY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CAB2395DA9
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 15:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773848399; cv=none; b=I3DEcVATXwod157mPqDQMffuoS1EvKZjkEzziozg32VC7rb4juOfUOkJkMK6DTvMaKmdq6pHqS/VJF/e1mHEfz57pIH08RXe/rjaObve3v7+DNbudEKpsA/VN4kyiRQ7jxFBJAMLIyRJ5aMUpJoKqhOLM6vHqxbbkKuuafk6JqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773848399; c=relaxed/simple;
	bh=nzR73bmLIbN8JP6GHPLqUyrWPBe2926e5uSEPpXi/5w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=glAYIOxWxUeSFXfyhoIUMVL2TGFH0DY5BPUV2USHSs8vinyrjEGv7kvOecv26rbOTumWEPezHX9f7tZvJaUhCA8BtXZpq5E1fBk3cxjVu4Kmqu3UwYIR834WABOaMACIIb+51z4w/oko1L9c8NJlW1gfqgRjzzjG+ct/a11SVqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WKzZSSBU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FhxVNbpY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62IFXV79531975
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 15:39:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aGa+CLZzKHoL/VZx2fIYOeAn8vQRWoCpwsf+TJs8OgM=; b=WKzZSSBUrBON1rx+
	hM7vlcAT4WcBvaPwpP3WAzsNFI/Rb+sKPvtk0Tb8yiOaSdeiBAWilE4ZVaw+NG3f
	l6ZkRjKBvf3I02fCT+QYnPDwJjiBamlm2pXOTtgEP/pVT8ueO7Wq+UP2qNjOIKyy
	7m20AaqNZvBefUG9NALIZ4th9ddEMgrEdALwbNVezgvPwF+vhu1VoHDabIZ6V8mG
	aInT6XbUMNuXrJSjJXQDFrZvovv1I8kKfAtsvp6av50T3u+sJW01D5SvwmVD3+jH
	4tw3JNL7AJnqY9qtOzD33l4DYZb+jE/oqgqx3mEBXrJvT1xV4lW37fuMs1X2SLK9
	SZvc6A==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyj4g37jm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 15:39:53 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-50920055f0aso72041581cf.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:39:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773848392; x=1774453192; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aGa+CLZzKHoL/VZx2fIYOeAn8vQRWoCpwsf+TJs8OgM=;
        b=FhxVNbpYal2aJwdhvcJLQS8u+CpGk0Nd9CrNr6NDlhWb57ugsFbuSZhOhAQT0NWOxd
         y1S5pfNRDSFZ55697xTmAM6gxqa4X8JQHwMcnydxJcX9BjNu/85y5tp/61fq3c9VJEWA
         iYVEAlr5oy0zFCnxA4yBWT31apurD3zgLC5otjq2OSP9gF9R88BqApxLsSZrAj6i1g/W
         A2EKRyC+R0VRNvOplzsQ4iamu8q1I00rMgEBkWAhl8I90C5cbiOJxKwkcb1qIANYYxPY
         sepK9Z7hQsjci0T7/8N0E9zzuBmT2r9hmtTLMxUMvMlohScJxEBzQfNX+w4lS5iyS5EB
         5Y6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773848392; x=1774453192;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=aGa+CLZzKHoL/VZx2fIYOeAn8vQRWoCpwsf+TJs8OgM=;
        b=XXqTg4mkDoprT8uRgZwOQ/VMCoeDKevDwwh7OcaX7WR7+sih7M1DJjWHPb4vqzubGC
         BNEt1BjLjUg3z/lzoNGbfhu+J1rOXLnSA1L0AtcENFXsNqyKH14hQ+dl5ydURZEwbZ7q
         D3geoNM/5vEO/bVGmsE94x6xKPk4Flq1o7YGksD2kqaGmvV8YKNyPvKE17gMSBx194ZH
         VSt5s74O4abSkcZRvLnTVQZynS2ePdwGKtlE+wWgBY7SPWBEs4FWsmInr8jb5M5l8+Eh
         B1l0fuWbk5HIeJf1QewC8Jsk+ez+HRcmqv9Pu+s7RIUPHfY5OcZYPAhrKWOdVqjrBY1z
         gNiA==
X-Forwarded-Encrypted: i=1; AJvYcCXe3uBHuUh2IY/kQl/AfE/0fX8Dazo69KiYjvZR6j+rsR767shzMod+tUmlzwEG+L0iGDS6DlglJXM6@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0OFm/Z5/A3n+RkTFz+Lwfy3sWOjMPjJ7XmH8AqhCfUl5sUvLS
	AecgQTZNyh5sRA6cqyk17KHqC4Ah+a4pCEEJchaNzYOgT0zwICMO4R2FlvpiOnTwnf+BsSBgMm/
	BpwMQlLpR3/D+vje4mTFgY4+ccpEg1bDhoULXZQjXLmej9i79y04c4/jg1oxgUUpV
X-Gm-Gg: ATEYQzz1z057zORZsuliXeVQW+tz7czC24Zz7PFFrNln+1rUZTMgPokn72Lpc4E2yxv
	MPPHvVzRqjul34usDsoLoJzRbeU66iPfY7nWUmAOUqvtkQWgruL/S8Ftx6jrMUzJxJWY22GmzHf
	QJiewemy8S1z2HLyWK947wujTJfWF+sM3vCFBxtsSP4+iPsu3jua2oOprRlmd8HjjVl138rLHYW
	YoYO6eATCqN+sXEaezG8krIfbVjkK1BFJtGjgsEG5oQ5vyF9gnrTKBuT3U/oVVULdEaZcvwNQNR
	RF8lm7Eu7AlqAjIhyFGCIqkGDTOiwrLi33J5t7H7ztCtezYlnYdgiZGjx2zc2YApFYhH134jU1a
	Dp+vPo7MoNucB96WxmRy9ALWBBJ8=
X-Received: by 2002:ac8:7f43:0:b0:509:764:2efa with SMTP id d75a77b69052e-50b14970746mr44003821cf.59.1773848392409;
        Wed, 18 Mar 2026 08:39:52 -0700 (PDT)
X-Received: by 2002:ac8:7f43:0:b0:509:764:2efa with SMTP id d75a77b69052e-50b14970746mr44003301cf.59.1773848391774;
        Wed, 18 Mar 2026 08:39:51 -0700 (PDT)
Received: from hackbox.lan ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b51892161sm9227560f8f.21.2026.03.18.08.39.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 08:39:50 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        Peng Fan <peng.fan@nxp.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux@ew.tq-group.com, linux-clk@vger.kernel.org
Subject: Re: (subset) [PATCH v2 0/6] TQMa91/TQMa93: display support on MBa91xxCA
Date: Wed, 18 Mar 2026 17:39:30 +0200
Message-ID: <177384710699.3709943.15119808744846226228.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20260313070740.585043-1-alexander.stein@ew.tq-group.com>
References: <20260313070740.585043-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=TPhIilla c=1 sm=1 tr=0 ts=69bac749 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=CwIvE3oJpDz1FoVedloA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: c9DbZZnPVgH5tCusB8uluhkbnRoa57fl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDEzMiBTYWx0ZWRfX1B+uiaFLmf6E
 q4gsZMgjq8FNb30I03E9VA54EsUwqKQAKbDIA7izNNagnIDNBnZyB+bxG3MqvxSpgkMfGLIIaOF
 vEiPCsCDLwdmP+8g4xHhIQH7dhwk8b/a0LC+eAgxrLXX1AJQ8GjTMkWq2rOhhJvzfVzzSYASQtP
 WMBgTUxJpRq66wF36W3S18WCOclqgMYhf0uHMkGWBaEp5C6As/GWSLSl7K5ke2wefFtz3lm4ktX
 a+kaKxhp159kTCk+SNRe0iCC7EyHm4INURqCA2//FQH+rROepiImJM/Ck8g22sdghaUilUuizNa
 q3pd2Irgm7dYOTOP+9PUUtLJA9KNmPxfsAQNpi3HDrSNfbVOLXdfkNDac/SRSbbJIu/k8ui/SoO
 WV2hglUJLUz3NUOpZZMisDY9XvoHH93MNhCz3sviQ2pr9H3O6lL7wWfD0r6Uq1AigNBjmSEHxnF
 VvKVWSzsIgN98DJE2pw==
X-Proofpoint-GUID: c9DbZZnPVgH5tCusB8uluhkbnRoa57fl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0
 spamscore=0 impostorscore=0 adultscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180132
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277347-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	FREEMAIL_TO(0.00)[nxp.com,pengutronix.de,gmail.com,kernel.org,baylibre.com,ew.tq-group.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3CEF12BE6EC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Fri, 13 Mar 2026 08:07:30 +0100, Alexander Stein wrote:
> this series adds support for parallel and LVDS displays on MBa91xxCA, both for
> TQMa91 and TQMa93. The parallel display is attached directly, while the LVDS
> uses an LVDS-Encoder. To actually work it needs the pdfc driver from [1].
> 
> The first two patches add required (Video) PLL configurations to achieve the
> necessary pixel clocks for both displays.
> The last 4 patches add the overlays for TQMa91 and TQMa93, although the
> overlays for TQMa91 use the same overlay for TQMa93.
> 
> [...]

Applied, thanks!

[1/6] clk: imx: fracn-gppll: Add 333.333333 MHz support
      commit: 3cbcf93329c0d40c722122f550bae8f79ca3e65e
[2/6] clk: imx: fracn-gppll: Add 477.4MHz support
      commit: 0463762fa001cee153ac0edb538fd5772a93768c

Best regards,
-- 
Abel Vesa <abel.vesa@oss.qualcomm.com>

