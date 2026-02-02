Return-Path: <devicetree+bounces-261672-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iFCdNEVUgGkd6gIAu9opvQ
	(envelope-from <devicetree+bounces-261672-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 08:37:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 31DB2C93DD
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 08:37:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2EDD2303CD16
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 07:33:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09FFC288C0A;
	Mon,  2 Feb 2026 07:33:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iBH/JmC4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SOZVV/Ob"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4F832877FE
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 07:33:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770017624; cv=none; b=obadPwtvKJF+EHAzPMzL1c3X9tCP6VIavqdrZ91h8A5bE6JqoHIyYWyjR98gazgsil9SPzL0bkxI5ootns3CGbYeU9DfFipffuqqcFv4idmcaNZJdsdYnHgdJ1aV3lDZkRh3Qsfr0SQOOrhlXpygPAl/uxpppKAa+sb2ghC8TJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770017624; c=relaxed/simple;
	bh=haOTBfLJ6G66nOuaLuswaEjLpGbUStrMRJyyCv2J1pE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Bht1wGVD7SZVyM326X2W4ZW29SA98BmBJRecNfWONarKIyQsjUkAEdcVXPeCLJvstuZx+XPtHhvJmtoUN1yxxegXAl4ZovanTnbk2oBKO5xk/ejkNHpClktCvxGHHoTBjFmVTKQudih5NCIgFOT1rEtxMHOcglh/N+F3yveBWEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iBH/JmC4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SOZVV/Ob; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 611NQk3e1335376
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 07:33:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=om1G0bUi35I
	JJwvIUrY3DL6YzKwXm+Wjox69ofXth8M=; b=iBH/JmC4K4CafWlD9JHB4cbulIp
	77oPWHK1cRe9/+0TsXleaTKUSnsEJj+cynKbncDQwMBQ9FnSw5lbv6F3Y5NAGM7g
	jrGdqUSbCBFCzIN7zmpOfIPIms68cSPyYgdXazCHJVECvSFkaOW/5l04Wtgre2UJ
	MxklzpOGFwnJsn8Ejxbtg1iOVzwwr6TcPU6XifgsSIvhsvLbg0wglBF9/ZM4qUSo
	9J61F24b5NwxqKm437wKWzZ3w5PUVJHP9R+AxqdasrFfAZmwZHWiuH+tGWh1LYh1
	vBQtazMmxigajVktSaVKgj4hdfEq2z4lC8nQCzq1voMhTSf0PDoz01j4CSQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1as0vert-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 07:33:42 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-352e6fcd72dso7591365a91.3
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 23:33:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770017622; x=1770622422; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=om1G0bUi35IJJwvIUrY3DL6YzKwXm+Wjox69ofXth8M=;
        b=SOZVV/ObBwfvgtjzuzuq8eHMU3k3kEwo9Lg6awvYCw9gmdQmN4EDJGCMLhWtVEIjDf
         57HPRBtG1rDG0aVF1DzTwKnZcwEEIF9APyBh8bzaDHNjYKggLoZm5g1ZaFYnHn0j9SXB
         FF7yWP/rnZiMHwkl30HIJL6c9zaupaEcn4N0OL74o3nichhuIHhAbhENJewUn+UECJTh
         B3sV36DJY+rCpZBtbGWADnyjVg3fdfVBAstGGaQjDqCQHJYRKOt1flPW/xLpr04W1eR5
         WrA9N4wFX9bmtz36GBgk+oLyZ6WcljiMBAJ8DZD1N7iwztPhzDU9rNBaFpLpxN3jVhQ3
         DRrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770017622; x=1770622422;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=om1G0bUi35IJJwvIUrY3DL6YzKwXm+Wjox69ofXth8M=;
        b=oqi7BWc1aj3f0ISsEY5KEx4M84P625LkONhTEM+/JtcvjQQBrCkxIgBwtkXx0T871i
         3EBx3QjK6eTcX6ryPWOwEr1v//4ejpQFPwyg/mAych9KKxQT1K3H1DilW9l04QuEcou6
         KmgZIrnCafxVVSpYuZqVnDyipX/CsgUbo8kTT3dYZNvlxMqhaosNm7o1HGoc5F//PbTr
         rDV+OhiYqQt3AEb5lh0pjHh0BojLG0NGTZkljsWsr1htr+CLX2cCd25uBDQazimk0qUg
         WMAZWSkVNRDuN4pOu5YFlFtVCUMT4wpjnM7dHMAB5Z3lOS24BCaRe+eLA/bDw5V0rUQe
         3e4g==
X-Forwarded-Encrypted: i=1; AJvYcCXM4Woz0oBjzl+JPh07Dvy7MkHWKvX+3Tl+kB22Rr1Dv9aMqO+898Cs8JA1jmgl2WzxvTomu+TrXfer@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2qQmmAQjdjhIIxdE6wlUu1lb85LUoFSGr+nDVqynw0ULOeWOz
	deDjgHwvVPMhr4oPIzev8yCpBx0Hy559TLPsLY/6Dv9H2WxaHA/t2psmlkB5XhBmo/3+mG5mkAV
	G+lrT5vCCwfNDSPOInmdb9DVD8Lo/DvDkVKuf/Bz7kzBbxAhA8728LR6v6ZUgsiPs
X-Gm-Gg: AZuq6aJPa2VsCC32JDBX9J0B3e4dBy+3VnzmFL1zN3QxvgWGMN5eaIP2pg5KXZEXT/h
	O6zmoE4sn+X3DcQMLpJAh5vTOVjwrA7ei51S1QksGlth6pGR9sfChDmokFOoatnTSvR7gY3ZrED
	JbjqEMbxFB9iPMtbzKS0q1EkkgtwfkmYbGhksVPp8arRiUfRTZZQioPOSQugKYDbhe8ZOLpjA5d
	0RQ9U/SGsjWaxU+/phVAY0Zno4eVsvSCtzNarKjc5O7jGRmwS13X+BTGpNN/dzaSLBIpyukWpSc
	iFmpnILkzq3ewoqHKp+iPsQPPZHxy57/91rhGi6WPizmlpsA2IFQZCzekCuvXsRdVNJttYa5u5j
	nGWR9/Fu+IuhVfGb6NwlxrfM8eTIdtKRp92zXW4fqIlAVOYQFD1VVSLMBO0kupN/ax/tAZn/QX0
	9vbTydBGDVrX9TtU5Sxvp8t9ExQPc9PjfTwv24Nf0=
X-Received: by 2002:a17:90b:3f0c:b0:340:d569:d295 with SMTP id 98e67ed59e1d1-3543b39413amr10955347a91.24.1770017622353;
        Sun, 01 Feb 2026 23:33:42 -0800 (PST)
X-Received: by 2002:a17:90b:3f0c:b0:340:d569:d295 with SMTP id 98e67ed59e1d1-3543b39413amr10955312a91.24.1770017621875;
        Sun, 01 Feb 2026 23:33:41 -0800 (PST)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-353f6103e25sm20758332a91.1.2026.02.01.23.33.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Feb 2026 23:33:41 -0800 (PST)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: sumit.garg@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Subject: [PATCH v4 3/4] dt-bindings: arm: qcom: Add IPQ9574 AL02-c7 eMMC variant
Date: Mon,  2 Feb 2026 13:03:21 +0530
Message-Id: <20260202073322.259534-4-varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260202073322.259534-1-varadarajan.narayanan@oss.qualcomm.com>
References: <20260202073322.259534-1-varadarajan.narayanan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA2MyBTYWx0ZWRfX8lDEYr/pgt4/
 Kb5y3JjGdQdzKv3uVIEW+KC5YI0mheHU5q/UT8CY1Xvk+WpQAigB8N03hoRplr1ZGHye+DqOA7J
 ysE5LqlpZPX9P/ydX1sg96wPhtiMeEZH1YUVNACs2DjSOjZ6zikb+wH8FyyoKJv5CAiN8DetxZq
 Z/SaKA3tt7Gce064mv8ZCHkpHw9sooPD3y+KYf5Hv/oqxlybdooJZoLvU7bujK3gPXMRottzPnb
 EFzcIg6wCBETWbay6SQLGFAHgyBGTTuYjGag3/TUwwHY7MHgi6F0coYQDZae0AWXfVSV0CYXvn4
 R3vis3e9C87I9ssXSi4/zUFypJA0y9fYy8CQErQ2nixb3umHSf4u73b8s1aHiXHimfu6cBRR9W0
 ShV2CWu7bLfo6FYMJ0VMpAlwU49m1PSkOocX2mBshq9lmX2kagv0Y+vUEASKgBWEGmCwxQT8zCm
 NpO4Rbo9cGO8aDeAVog==
X-Proofpoint-ORIG-GUID: cT6a9ypuMExg5BuVxvV5A3OL7nieKm5W
X-Proofpoint-GUID: cT6a9ypuMExg5BuVxvV5A3OL7nieKm5W
X-Authority-Analysis: v=2.4 cv=MYthep/f c=1 sm=1 tr=0 ts=69805357 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=okxJcUns-7FWwRFb3XIA:9 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_02,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 adultscore=0 impostorscore=0 suspectscore=0
 clxscore=1015 bulkscore=0 spamscore=0 priorityscore=1501 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020063
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261672-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[varadarajan.narayanan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 31DB2C93DD
X-Rspamd-Action: no action

Document the IPQ9574 AL02-c7 eMMC variant.

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
v4: No changes

v3: No changes

v2: Update dt-bindings to include the new variant
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d84bd3bca201..28f9a6a166a6 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -323,6 +323,7 @@ properties:
               - qcom,ipq9574-ap-al02-c2
               - qcom,ipq9574-ap-al02-c6
               - qcom,ipq9574-ap-al02-c7
+              - qcom,ipq9574-ap-al02-c7-emmc
               - qcom,ipq9574-ap-al02-c8
               - qcom,ipq9574-ap-al02-c9
           - const: qcom,ipq9574
-- 
2.34.1


