Return-Path: <devicetree+bounces-325077-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7ATjM4urU2oHdQMAu9opvQ
	(envelope-from <devicetree+bounces-325077-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 16:58:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C74F7450F6
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 16:58:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=ZzeYaWQN;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=IyE5oe7+;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325077-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325077-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D6E9D30128D1
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 14:57:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6141F31326A;
	Sun, 12 Jul 2026 14:57:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F64131283E
	for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 14:57:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783868251; cv=none; b=TZFwMmVi6+IpUzMKIZhnl85NKxiFP8f7/0O/KgFtkps7LbIVgMcna0L7zC8rGpNFQhlH3E8/mdyiZBAxp2UmaWOIXG1YQJgeWa8PpB1aV7ARYwTonWCBVOkG738GEq+/NbAw21GUu07NVaLRFM5WPqI6FOulkT4983J8v+u9p2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783868251; c=relaxed/simple;
	bh=Xam3WnySSyihDDDGxNPmRcmRKrs0uTJ9euwWF3c2V3U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gVc19dhaOkzNxefUlnGNR9TGK0w8V7ZMdYo1K5OtQHdobmoSUQYtJG3djP9vVAPrCugk5PqLg866MzAq3BpIUpgXyEG1p6/NvmwatDoi4f6i01oTywOfNOCo7eNkMGRvFstnHf8xgB00tnfrP+/Aa/PcjeXulLJSJnEExplEIh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZzeYaWQN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IyE5oe7+; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66CDZbDY2749713
	for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 14:57:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=/pmF9pufgD212aiIVdQOWs0k5GzQeEFPiS/
	bMBeEHG8=; b=ZzeYaWQN41TGzdQrFgh9bvy4DfMIUIpA75j9VXX/0Yjl/pnZ3Th
	CdQ1mrUlwxKTSgt+qVsfVUxb5wnaXuaB/GMQ9W3RzC0KWkVlnsu8JRS3PPJxGyY7
	eCOcd9z53brTPD6mcYsUIxwxrWa9ctWssD2Slgsc4ab04uqqj1GwE79zPY9qXkup
	1BVVxiCD7wJQIycRHLJmiWZW2op9nyKbtrSr8GOywvmsV5gRWU8czj2ZjrSxHNYI
	EBglMnP4lT7PHrNdIXG5bPFDV1r41+OeUBodzbXfz1Dsmanvu1Qpb469BMM1yYoH
	Nb8+SwhpAQRQDjWwpanbbvn9e0vTQ3DVADQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fbecgk0c9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 14:57:25 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-51c0199faafso27434911cf.3
        for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 07:57:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783868245; x=1784473045; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=/pmF9pufgD212aiIVdQOWs0k5GzQeEFPiS/bMBeEHG8=;
        b=IyE5oe7+29nwrxPyh2i1tMb7Rk2aomM4tpbGrtHGPLGYK591zmjrXi2sTe3p7QScq+
         Nrzwp9CgIMktfNg0OMmgl7t0Fyh1v96StiOBtfbNC0HkMH5OlghUjhzH4Ncak1pF2fkM
         Q/Rad+jmhAYfBK5zOlW5BhmxdfOcfEsPuGEiq4PlLEeXMD7N8Psh3xTFHa0KYRAho4KS
         UizPUPH4abW9XKndJcVsYUpWRd1BHhrq49lfiofaXqzOEoMKSdX8wTiIT89CEAGPdobF
         9MIumWDvzZ1vqpoEU//1uRrAlQKiM2HfQhZqFhQzeYG+lWcEv+3FOYkiv0zVuREjKe9S
         vZtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783868245; x=1784473045;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=/pmF9pufgD212aiIVdQOWs0k5GzQeEFPiS/bMBeEHG8=;
        b=pEILwoS/3/NK8kSfTaj/PWVzxfLtepBN66SwbO8LldMV3gpaHBH4RmEDZLBqwNAz1C
         zIgtc6Wq5V3itj4JRr10Eu+aZ0aaHuHbHJCkCuiLpqKlaYsFM0abjHV9U9QU/ke2jHZC
         sEWyky3vqYbuMWSllC2hAXRIP8tpavESLTWonypxBAfw5fkor0rkBFyNxDAsW7rK8bYU
         lo8nUqaI8p/3ped5RKifAI9L2/klx+DFfjj9iSuLWMiOVqbCh+lf7secIvNy4EurJy3v
         JNn0o7I3HbZLs3UEK8u2sY4xiSdKnswH10nIsp7V2he7LzvhiOuKl9MfDLQRbtrROc1T
         v51w==
X-Forwarded-Encrypted: i=1; AHgh+RpwZauUWyWntHVsY5t+Nq+EhUe6AIUDZJHFJhMgI9xmNZ5ynoHgJu8lmyH3q1++Is1nv/r1GZeatVVH@vger.kernel.org
X-Gm-Message-State: AOJu0YyNvlLlkCLvmMFDVlhG5Xna2Nh/gsWj4XCD7dHLPCFkdngGBlUS
	kpbz9fVv3SbuFOuSD0b40are15DZsMRyCaTo67J5KZBUmXjwS9FvoVLvp9lAf2haFMyUeMJiGCU
	XXfDXAwfV2YN2i9B78dspIu7qcFh+CZF3ho4AtVEQnBs0cXKeQY13rU1FqxIN/XWL
X-Gm-Gg: AfdE7ck+0kwTtvKdfjV4uo1Iiyb58YzQDixgJGZmkMeKa3nmMokvJ1L3oaDqeV3Koxl
	9hNk/myugJtcxZ6ay+BwdAnb389aunRTatksXCANnw1gWrBiKwqzNVVHRNJ0xXem3hySLvSmxGg
	aGHt9x3tNvh0YqydIlU5K/TKjORcjDm/d+dY96KtvBkQDthb159K+mvI95vVrS0UmU+CTFlJGcw
	bX3UO4aNtFx6V3zejrviKsr2go77K4hzaOH12sklUDsdo6Bj1pAY+/yOd2MT9I+GtpYhvqihbPN
	et2z4RTbl3jDpbUSO1WhlNxcTJILtiQdZhuU5qVU0f3eEQ6InHRsbI6sxFbaOZX6FbBZshUPjIP
	TZTzCeZKhgkT5JLe6xVHs5x57/XA=
X-Received: by 2002:a05:622a:34a:b0:51b:fb4f:afdf with SMTP id d75a77b69052e-51cbf049379mr63203231cf.9.1783868245093;
        Sun, 12 Jul 2026 07:57:25 -0700 (PDT)
X-Received: by 2002:a05:622a:34a:b0:51b:fb4f:afdf with SMTP id d75a77b69052e-51cbf049379mr63202981cf.9.1783868244698;
        Sun, 12 Jul 2026 07:57:24 -0700 (PDT)
Received: from quoll ([178.197.223.174])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493f2a2e499sm222688675e9.0.2026.07.12.07.57.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jul 2026 07:57:23 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Suman Anna <s-anna@ti.com>, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH] dt-bindings: remoteproc: Drop redundant $ref of firmware-name property
Date: Sun, 12 Jul 2026 16:57:19 +0200
Message-ID: <20260712145718.126492-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1696; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=Xam3WnySSyihDDDGxNPmRcmRKrs0uTJ9euwWF3c2V3U=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBqU6tODyBAdxCv7LttYZ1TljOtnt5RYl8TpHtke
 z5IVF2RgpKJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCalOrTgAKCRDBN2bmhouD
 15QDD/0S5wV672WNwxOQ+uf/SmXYU0a/71SL7SJCwz5L+Sm2S7Snh+QEnukl/91QB8uvvIKbFUB
 a6ptRx6zWLegA9e76DbjuYkOItsyiiyAsyN7Ps3U14JYWlYNfaVt/a4b9Jfv9ahBrK9G+m4/MbU
 Q/jbnQM9DDxaNwj0nO5vzAM0AtaUskzDcau48XzdTpfTafyulMysq+gTvikJPCMqmc7nggB61RG
 RsYu/KPNeHqXPwktw+my++ko1y90OJVHZ53uSCFwNNaNSXsUozeXUgGTPjZYpYrhevy+KQGB6e8
 o95LTqOeTtt7RE3NiCMIHjfZCLjLKm/noI/SP4AHAKjBh3kg6AuS+2rfQTHLDGXzjWG4/qAyAVa
 O3GHO+MhqnkKqunw2Ci0LoxS7UByrmyFSSIjdMK7+HMJlQ/lzUBcAhTA/3QK5rneCsZPZzWYkL9
 BzpBfXeIPyNoLAJhZ2Sqc7BlsnfvtH3Nugu2i6gEQqZOO6mTKoeIAsDNlnY49RaK+2bQZQZyl/8
 P6R7xJ1+JVIxajvHdYrLCOL4Um9nKvl52uzBQZE0aGud3Debt2OfY3BlD4zG7JksZgf2oA5MJP5
 DfISs4qDlczuoI/rRyNtHXBfTbN5c6XeZusZc8Jyeh6qYe6HS4SqD60Xx+3/pYxBr1gdVtA+TNR RsMLs8SVQsK+bNg==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEyMDE1OCBTYWx0ZWRfX+ojzqiVgvmde
 NRsH9pbqG5hn7mVmujalvbhNUCQ65LJc1Bd0wAPDX0P639OTjmbCVyuaz3BaruE/yDjQDFeYTOz
 4Xd2WzuLciuTPaGptkpYO51Qh65plCQ=
X-Proofpoint-ORIG-GUID: -CJvcvDu5oVGEyRJEYPvfnByA1uqg5DJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEyMDE1OCBTYWx0ZWRfX2ayY0LEY8g8N
 BS7c9HMFqzJyRP2XanRBNq9HPhMAQbg/UO0Xy59SBXCgchozaQNWBdy37O8YmhFEpLPw4aNox1G
 Gbt7d5Ccln2oy8Us1JWsoJo/Ou0G0CNT6zMeEvzV680Rkbq6J/XtcF+I/TVWLc/ergBV4YEmya/
 ey4/ynqmcm8SxJzsCGGwJpMDDDuSH0MYTx5igi5zbXUNDQZh4vOUnf62McO+y6pwscTS5FZENvb
 ILLqIJfBpFZnqM7TGpbKbgJ3fnNmcBjI2/CI3rLOpftAenEOPaJUhnw5XhyZ+HgJlJa0MNK5zTI
 6V1ykokvcAgD5ruFo53yJYeX21WtZxFPLUgFHeB0d5orX0e/jaOpDjF2m6TTvn9SJtjPDLUgc9M
 tMnlh7TeXS1d4pnv9iDr8XsuL1+GNDKj7ChlsxGaNN1CcNUvWtiaMjIONf5Qkfcxr9Bkrhi5Dvn
 0KuFjXF2Z9waijcHueA==
X-Proofpoint-GUID: -CJvcvDu5oVGEyRJEYPvfnByA1uqg5DJ
X-Authority-Analysis: v=2.4 cv=KM9qylFo c=1 sm=1 tr=0 ts=6a53ab55 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=N6niishs+lR9UBL1FN3Qrw==:17
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=hJuU4UVuZdPSbFSiBLIA:9 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-12_05,2026-07-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0
 clxscore=1015 impostorscore=0 adultscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607120158
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	SUBJECT_HAS_CURRENCY(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	URIBL_MULTI_FAIL(0.00)[qualcomm.com:server fail,oss.qualcomm.com:server fail,tor.lore.kernel.org:server fail,vger.kernel.org:server fail];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-325077-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,linaro.org,baylibre.com,googlemail.com,ti.com,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andersson@kernel.org,m:mathieu.poirier@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:neil.armstrong@linaro.org,m:khilman@baylibre.com,m:jbrunet@baylibre.com,m:martin.blumenstingl@googlemail.com,m:s-anna@ti.com,m:linux-remoteproc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-amlogic@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzysztof.kozlowski@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,m:martinblumenstingl@gmail.com,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3C74F7450F6

The DT schema core defines the type ($ref) of 'firmware-name' property
as string-array, so individual schemas do not need to.  They also should
not redefine it to a single string, but instead just set number of
expected firmware names.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/remoteproc/amlogic,meson-mx-ao-arc.yaml | 2 +-
 .../devicetree/bindings/remoteproc/ti,pru-consumer.yaml         | 1 -
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/amlogic,meson-mx-ao-arc.yaml b/Documentation/devicetree/bindings/remoteproc/amlogic,meson-mx-ao-arc.yaml
index 3f710433e937..4cd5121b9a4e 100644
--- a/Documentation/devicetree/bindings/remoteproc/amlogic,meson-mx-ao-arc.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/amlogic,meson-mx-ao-arc.yaml
@@ -25,7 +25,7 @@ properties:
       - const: amlogic,meson-mx-ao-arc
 
   firmware-name:
-    $ref: /schemas/types.yaml#/definitions/string
+    maxItems: 1
     description:
       The name of the firmware which should be loaded for this remote
       processor.
diff --git a/Documentation/devicetree/bindings/remoteproc/ti,pru-consumer.yaml b/Documentation/devicetree/bindings/remoteproc/ti,pru-consumer.yaml
index 2811334515d1..591471e5f93a 100644
--- a/Documentation/devicetree/bindings/remoteproc/ti,pru-consumer.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/ti,pru-consumer.yaml
@@ -30,7 +30,6 @@ properties:
       maxItems: 1
 
   firmware-name:
-    $ref: /schemas/types.yaml#/definitions/string-array
     minItems: 1
     maxItems: 6
     description: |
-- 
2.53.0


