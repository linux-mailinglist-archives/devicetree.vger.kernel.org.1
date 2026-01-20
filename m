Return-Path: <devicetree+bounces-257517-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GIMmKs3Wb2mgMQAAu9opvQ
	(envelope-from <devicetree+bounces-257517-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:26:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4376E4A4D9
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 20:26:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 49C7588D1D9
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 16:53:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84D7D34678C;
	Tue, 20 Jan 2026 16:47:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lt4PSfZb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="K+Cp69Pk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1178D33123D
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 16:47:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768927647; cv=none; b=qgDJxTPRDLr5/w48GNp/4FTOrRpZ+Yb1rCsgmHqRv9ZFHojUnByIVJC3TU3VPEbyLFgW+/f7KUN1afP7LkYzsANNrxLowcxjlM3T/glwtaDH1VLIqTvzyALSUrJ4ytxlLMXC0FK1PSzsehi4N+jU2sM5/QqvuEiedZUSLZ8Q3CE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768927647; c=relaxed/simple;
	bh=YbOnbFd/7aefh2keRqK1HOFcKinb0XZdETYvTeH5gIw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pumO4cb8/sJFdDHMByxjyoTBNadorBKcVT4tEF0LsWygyGrde59WqVe53S/mgMAx/H2NAjX7ZMa77ysVkLH5jHhXCuZGCghftt0O/kWar2buprAUYBq+tAzb++XyHXfw8QYWxdYQjsaBWq15VC/1eHQztBLT7e2HM4kDUpR/8Qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lt4PSfZb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=K+Cp69Pk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60KA7wfm3837347
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 16:47:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=X0LtZmj23gE
	qAv2OA4FzTwpxFo55ctKnnuyj/fzq0/Y=; b=lt4PSfZbVrn9R3ad8fT0KQfpbEi
	z0RJFw6OK7nr454jum5IbsPM5efsMiYECj0kKMvhG0pXn4n+fJMZNyxuq4Zapgut
	qVt8WMQjqzMNe1JmDFENCIOggdDcqW/3V5x7QJGwzD4/WWMT25P7XySI9qmFV/1u
	jqJWTgiKeA7oOPkOV/ZlEqdnWnM1uIc2tN9sx3L7yimtD7vH3w889HzHi7j/9C57
	Nbo8XHpHMmI1hwKE9CYyNy6YKQe7U+VZyPje5spxK48rbVfMSCV0RvIjgJrphO1s
	g5VTH7PK0Q2PoCUZrOtcSBAOOVN4BZshkIy0tn3FnIiz2QaBgJrtgQlkbqQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bt7pb97wh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 16:47:20 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8bc4493d315so1498692585a.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 08:47:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768927640; x=1769532440; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X0LtZmj23gEqAv2OA4FzTwpxFo55ctKnnuyj/fzq0/Y=;
        b=K+Cp69PkyZEYL5helFRXCZUeST88m35UDmwAEsJNdMxzv7gpFRAIWChU2vbKoit8D1
         Ly9aWrM8TuWKcFzKColCoGNLbbwB0muYm+s+JHvR/OkDLIFZqYmcaD4jmSCZRx3b4y4J
         dInBxXh9toEmK3MpSgy5wK7xXR/i+8k73XBkF7p8JD/PRhJvdI05Q5ht/1y7y0Og60vh
         sMp/pwjlp3ZlTzZHRwFlidc9njFknGtE60r5pYp91hMXZ/8yPmZqZS4EF4X3StCGuLnp
         FYF0vRaAMm1D1wF0xlBamZ2ZViMph3GIDrUtMAttA2btj0Jk0jm8wN5P618S+KH2YVcn
         T+tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768927640; x=1769532440;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=X0LtZmj23gEqAv2OA4FzTwpxFo55ctKnnuyj/fzq0/Y=;
        b=OwKgPHbWmpa8dSidYGt93pusFeL7u+ZvmAjKBNQxwEqyWHJKo/D1N81KdJ621H1B1d
         tlu3Epn0QiRbWtbqocPiu5yqvQufNpYBrqYwVTf/6msa+61mp66kiak2rwH66AgzBk+S
         yo1ynHKV/yCbDUoKrRwC5HC+5+Ly0EFHRo8N0sPrY2JgvxRU538WRn7NMwYT9KvTOZO0
         8qbI4YeIqcIeaC3KoVxadQ/Jo1svbwfar9qfmhiWBZFLRmzqdmA9eromsgctaEEwdqf9
         gGZtBwAMX/Gryw4DsFbV8sBtQsaiNzPIlOYbvqo/DAExCXslVbieErUksB/W+OH4R8H5
         enYA==
X-Forwarded-Encrypted: i=1; AJvYcCU8mwA6GLAao6NlIpbuh70e6ZilMapKU+5+t0jJQPdPJfl9s6PJDMdh6qTBFIFPvkP1YGJ0SQIuuHZS@vger.kernel.org
X-Gm-Message-State: AOJu0YwV1ZWSanIQeOhSB6rDdvTNh0NQISCmMeMQNsZw5AHuThCRmulP
	tl7SbcL/sO0ISW2gNgrHXa7BZvsfHsMEslhVPba26thjYxGwFyP7Zsjl7sj8aAAvt3DO/kWbb+C
	LHHyeH6DAucbc/pS87jn2I0ujXv59tHTIHHZN5RvDeKSztM6pN+Akq6fIraNFbfCV
X-Gm-Gg: AY/fxX7chvFGO7E+Fa28+jan6FzGrofGglkR5BUsm/pTwEEqLk9kp/PwKyzJJ1o/C8q
	5D8L7TaKzcmboFJPhrBn1ovvGnGbp64kSpi5J2Jdjtr4X2UvMt9SZ8AK7gPboQ5C6GxiBCdQwEA
	ufkq/NhhbzuOALjGEg0qmclAk7jvkh+FtNJW1P5pDVufpSKTQdfS6PVO2FntzlcQ+6mumRd/7cA
	zIloUo7FhJs7sBhZ5R9umR89iIqBNwxmEhX4LmrUXSu7/h6wJsDoA/bIbAXLv4N/QS+hU9hrJre
	8a0upDJacke6un5UUl4hgF2CgdB5hdv/noc8ez7aGHtNixfxccMyZIGHEZYK11774/Rn7oGHsK4
	M7nE4USsAxYoAK33aioemuq8pfw==
X-Received: by 2002:a05:620a:6889:b0:8c6:a734:7d8a with SMTP id af79cd13be357-8c6a7347e67mr1966233185a.4.1768927640040;
        Tue, 20 Jan 2026 08:47:20 -0800 (PST)
X-Received: by 2002:a05:620a:6889:b0:8c6:a734:7d8a with SMTP id af79cd13be357-8c6a7347e67mr1966229885a.4.1768927639554;
        Tue, 20 Jan 2026 08:47:19 -0800 (PST)
Received: from quoll ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4356996cefdsm29511772f8f.24.2026.01.20.08.47.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 08:47:18 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v2 2/2] soc: qcom: socinfo: Add SoC ID for CQ7790
Date: Tue, 20 Jan 2026 17:47:08 +0100
Message-ID: <20260120164706.501119-4-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260120164706.501119-3-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260120164706.501119-3-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=775; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=YbOnbFd/7aefh2keRqK1HOFcKinb0XZdETYvTeH5gIw=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpb7GNcpivhbWxX2k/ZraF8/7kgWVIWySUK54S6
 NyF5d57fOKJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaW+xjQAKCRDBN2bmhouD
 1+rpD/9pJgCN9lcn75AzCglL1BRYTM14NiR/sZoLGvDkNskZhKn/P+ScdMxlQpNNs9ypco35qsT
 W0qi34188wPOW/KzpdNdKct7p/A5dN3Ysloj7uzgS0zc3I1lmaMZ9KGtguU+NwRIgInFoDoXjlx
 FM2yNpyYEZHRzmq3w1Wpmjdlde4XmNExIVGozCwLtFcf4LmTaQpVfmrJPCUt8qThOd+JtJROomu
 sVpqVwvZt2o6cyYwqe24G1N35RYwlx2nI7IFYpojQQh7Fs4FjAzi/q5IMv2Momi7UiYNLivKepv
 eER2Qg9f67Cwu2Z7loB45uSPeqosdDUzm5e6ioLNYR8pA4W00rGi04/tkNhKqGFtOK2amFiazph
 fTiUFmYFK8Z01TFkode6eXzvp5H5EjlU3wCqQMYNHEzZ22N1hCXEphCbTKAXFlZmkyNYGNw+17y
 6510psTcVbqZpU81xJf9o49eUDnQz+z6LnmmfCslKgMP2ySnMKZ0ghPn/G5FvUIVP+h8Otg0aA5
 eVRcfz25I5nxAko5nXx6hVIZvzrgM1iiepgV916vevJ7o/RjV09PLP26UWF6YBuQ5r35Rk370e+
 b6kFw0MZTJiMrk/LQGnR6COaBUa1oZmBfaUegb+MwTARqZZKHUNmuTcw3/ZYrVzJ7S1BhodhHkh 2YC8yovYKrbptng==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=OMwqHCaB c=1 sm=1 tr=0 ts=696fb199 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=PP8aMIA6NNbLyI7UcOwA:9 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: 29WlgG3wlxu1UjKdOYAxp2WYAPi-UWtr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIwMDE0MCBTYWx0ZWRfX3RfxEkt/6R9B
 DOsNAh5s0/jo4P63hgh/r1Gb5s5TJwj5FyNGWOrePe0cvTV0waUVwRLDvSY6RzwYw6DFawytEjs
 7ztLPN23MBBWlYlAQYHf7ZSQpquao/DXJBRIx+1AZ9tF884tRkUNmNFN3wTEesiXIVRx8cPuslD
 P0fcIM7aQjYyLTjt/sblrTWt8oruF6AUG9e4NveoSbBYOlK+8uhUV8/mapqwMmM9ON+JiYVnkrZ
 n3fzjowNXFMl2aXpeX+dRlZMRNdY3o295DLQctCHwhRWuKMvHryLxrc82DlENZWk0uQ679wReI7
 5FKJQqv20KdRLhU791A/bRqLvtYHd/OftdpL4IXtEbPtmfFW66EofVYshgX384mtGlBvkiQ2VIG
 OuZ+nYe6aCCqGXAxGz8hI9Aua2fNkVYdZWhyqC7sTOZOv+LxvAaGVPuVozqF2A2EH0LCZrI/sbk
 uG561am/j71ec2i/LKQ==
X-Proofpoint-ORIG-GUID: 29WlgG3wlxu1UjKdOYAxp2WYAPi-UWtr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-20_04,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0
 adultscore=0 impostorscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601200140
X-Spamd-Result: default: False [-0.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-257517-lists,devicetree=lfdr.de];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[qualcomm.com,reject];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4376E4A4D9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Recognize the CQ7790S and CQ7790M SoCs (Eliza SoC IoT variants).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Changes in v2:
1. Add also CQ7790M, extend commit msg.
---
 drivers/soc/qcom/socinfo.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/soc/qcom/socinfo.c b/drivers/soc/qcom/socinfo.c
index 003a2304d535..41867601d250 100644
--- a/drivers/soc/qcom/socinfo.c
+++ b/drivers/soc/qcom/socinfo.c
@@ -522,6 +522,8 @@ static const struct soc_id soc_id[] = {
 	{ qcom_board_id(QCS8275) },
 	{ qcom_board_id(QCS9075) },
 	{ qcom_board_id(QCS615) },
+	{ qcom_board_id(CQ7790M) },
+	{ qcom_board_id(CQ7790S) },
 };
 
 static const char *socinfo_machine(struct device *dev, unsigned int id)
-- 
2.51.0


