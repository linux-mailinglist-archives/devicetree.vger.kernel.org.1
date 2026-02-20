Return-Path: <devicetree+bounces-266847-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GEtaFaAamGki/wIAu9opvQ
	(envelope-from <devicetree+bounces-266847-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 09:26:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 76927165A3D
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 09:26:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1757F3006D7D
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 08:26:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09BDC313545;
	Fri, 20 Feb 2026 08:26:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Zs5Zlr1y";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MDMCGJ5O"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0B402D839F
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 08:26:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771575962; cv=none; b=HpY9+LPCW1+bXVIFCFpWrl1RBg9PSOUW0/jn3J6A0t4f9aBvv8vIH6VQfoyxD/g2Hx8Unmgf63avHAoV0iXtL3o3CXW8U1ZdzznIstOPSel6BZYbJvMnNR1bihzzGtQRqnFkMZex7kBC+qTUACvu6QpvCP1whtoEX2iXRL+qSC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771575962; c=relaxed/simple;
	bh=ZUucCeRSaFVt0BQ0n6MDh24qLCxuTbyM/jjmXjw4sI4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=KdV8AtDF3U3faIMC85uGFWg7a1Mf/7t0mipwewfFd+UqyTYgjt0Cmysk515TofaZLXZ1VqpjeeXg1pS+oyrBfUOWAJeaBEV+bCL6aMTragG5CVHw9g3OzCvnwkkaopjwhXMGpXIOjTk8LKTzwRROPAWGwpPJOu5A2zo752mVqfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Zs5Zlr1y; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MDMCGJ5O; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61K5S89w3337651
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 08:26:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Wm5XzvZ/xVItQdE/vfTJiM
	juLsnr+3TCub4tu7D2mcA=; b=Zs5Zlr1yj7kHDwTFhPs3wXJBiuol9cwbgyoAIS
	h5A6N9tEldXxlIdPxqeAoRod6wSOmNC3N6UyhmaTU/sAx6k6aMFfLlxZuatQ4SUC
	wRmcynqsaukEo4o1LwsDe2AhIsONFhNE1b0TyMqS6eCMxMAaVN0ym7DK4nfBltkD
	/opX+se22k3EnB7Sh6a5r+RM6AlksWegvC0fyiGpwrq3SdxB+LdvK9zbXlOd/twz
	6uw6WWFD7RmUcE8QrO01mBwCoPz8x6IlcKivFq2mfc0umNnsz4jLZTx6/DelQ2Y3
	ouvq32CgsAMrovJAh7V5a75nyGPZ47wPuuCDZU6Zlx7IC67w==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cedp6gys2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 08:26:01 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb4d191ef1so249548085a.0
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 00:26:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771575960; x=1772180760; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Wm5XzvZ/xVItQdE/vfTJiMjuLsnr+3TCub4tu7D2mcA=;
        b=MDMCGJ5O8GtWQLqdL1S3GHm5PVT52w6KyfHJuP8q/MnEvlqvwsQ57r18cF456MGop5
         J8TI6ofrFugcCEvL9In779H6e2EHK6Ey2mx3AUPib6Zm0WHH31jamkCm5Vs9IBA7fk4j
         RhWT/4U7jgxdaI5xEUVH5X3KvPSsJPVfI4j7SKaBeRj5D3uXfaI4tQnK/aEkbBw92s23
         b/oMrWL4ckNiphSe4wiyFJpb910PXGqiFyWShVopDMZBV95gX/7EBeOTIbmGCtTGKt5l
         tAKSsr8zqkK0djN4/IPH6hDKg9FHifrTCbf6pjoJuqcUL61APgk+62MiIuD1COvjIAfQ
         QODw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771575960; x=1772180760;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Wm5XzvZ/xVItQdE/vfTJiMjuLsnr+3TCub4tu7D2mcA=;
        b=E3GhXpTTSiEXTuzivqP4HDmWxh8BOtqBt6sd5fojIgtyWE/cVBOooBcrc24yk2ZRlZ
         sflmzSdf1XsvoYXAuYnLhpkYicX1Sy4QPzcNdfP7etKA9fCSxZMJ3y2j/yKdmd8LZejX
         rCmcvXaKi8JR97cIwRsv2PJAXz2swjNCaqEWE2YRV5QYC0tOzL01pjqiREIwJljh7Cle
         Ja5wyd5/dQ2OF2CPbZtEM6mA1lj9xa7rFiK+BrmUrwScYjyhCkIz04lU7tSdyGk7oRmg
         uqTCHUnsN8kPrzgZ0iXC5XYArwKwOil51VSJtjpQZKaiMfrFLhr5KC8FtwcYBRJzAGO0
         jIxQ==
X-Forwarded-Encrypted: i=1; AJvYcCUYJkYG8ZrE8FycVDkzlJk3I7fZS5UVPZs0Uzm64bDshB/DmtFQv6vVu69rkMv4J6hH1Eh4cMLQtKC/@vger.kernel.org
X-Gm-Message-State: AOJu0YyxfVEeooqAymFZM9Sb+sCaLJ+jd6LC0HFxOW0XP1dSMuDJyJUF
	3to/aEVKBMzjqIHm2k84q12o1cBpiHovaWqh9TGQjPFi+FcWBVijU/zK8oHyyoL6GrkB3N6vH2W
	0CG6E9zXsojZ61wYKxSZXimAer0/yqUl5jgC3NLf9seHns0/tvKeWh0XzwS0wSp7e
X-Gm-Gg: AZuq6aIkSpI0orme6PgLCMIpNYnJBbdlBZVQHpaW38Qi4Y2wm0//o2jPgyW5Th2nyc9
	Ch+bG7z0T6qykbJfec1qZ86hX90uWoMUogzkuk9Bk+22zH4DDGo10U9rgp756plySVMHlEJxcDD
	GZUZzTVaHob5b0U5BMFJX7+hNpzS0/TOO8MuIAmjTHoPIyNc6mdR61cvKKul/yCRMBe6B+cdAud
	9CrvzWrYmO5+iQwRmGlhvxAM6o98UQJBaMeinCqJtOZucXqO6wUCzCjgJjue22+qjSAGlKCbQVC
	oB4SkgOeDSIgzNTjcDIK4HLgx09VG+kWgDjoOA+jACb6LQCkU4KkDrd9zwPzAM6c3moMqAsvR2I
	iCAPWpJibfIvP3vzkl5czxk2R9WeOzA==
X-Received: by 2002:a05:620a:29cf:b0:8ca:123e:8194 with SMTP id af79cd13be357-8cb74043603mr1010057885a.33.1771575959905;
        Fri, 20 Feb 2026 00:25:59 -0800 (PST)
X-Received: by 2002:a05:620a:29cf:b0:8ca:123e:8194 with SMTP id af79cd13be357-8cb74043603mr1010055285a.33.1771575959276;
        Fri, 20 Feb 2026 00:25:59 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483a3db54d9sm13329945e9.0.2026.02.20.00.25.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Feb 2026 00:25:58 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Fri, 20 Feb 2026 10:25:50 +0200
Subject: [PATCH v2] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: document
 the Eliza QMP UFS PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260220-eliza-bindings-phy-ufs-v2-1-4910bdcc585a@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAI0amGkC/4WNTQqDMBCFryJZN6JJVeyq9ygukjjqFE1sRqVWv
 HujPUB58OCD97MxAo9A7BZtzMOChM4GEJeImU7ZFjjWgZlIRJ6ItOTQ40dxjbZG2xIfu5XPDXF
 Zl5kRsigUaBbKo4cG3+fwo/oxzfoJZjrWjkSHNDm/ns9LeuT+niwpD8plBoXOZHIt744ofs2qN
 24Y4mCs2vf9Cx7avXfVAAAA
X-Change-ID: 20260219-eliza-bindings-phy-ufs-3d95c2377aeb
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Nitin Rawat <nitin.rawat@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=2102;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=ZUucCeRSaFVt0BQ0n6MDh24qLCxuTbyM/jjmXjw4sI4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpmBqQWPwq/SfXOMqzmdkTxkqEGsWXkQ4EEC329
 fmCvog60bGJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaZgakAAKCRAbX0TJAJUV
 Vl4zEAC2QFggdRY5zSV2xcsERCNqWN1PXPEZfofXKAZuJvFsaNOe94l47sdktnnxBe2BqPFpsBn
 1zg6YL7iDbGWpSdHkBWtNSEUrQ42I7fYd+e7PB9BBk2y2yXNiyrPbMuw/1lJE+jFEhcVuJ+gRkN
 U9La4Pi+gQGnW0Kvu+U2dbWDvvalcYh59aaLUB3rgU8sYJOe+xBlJYc8+JCCHmqUbGsYFQgD6vx
 pZpCncV4lP4mR9UfLFqVyjpIjXQJTP0b9kn2Oe4clWCEggF1xTzMl8N6V/NymoAj8LY+JoLS5Ut
 ExRdneqI72/R6tibAJzyfGARgaty9/82Nc/IWMRlTtm2BqnK/TEdXahRxtwANkZguCKLbf680m6
 +xEgQOevRzJ46nKW9MSxa3dj5llgdJE4mVNbFB+FOd6Myu9+CqKfqyrB9WNvbWPhQ+BmfyXT3Kv
 Z4BOGyyBxC1cK7gZsRNUxAFYHSlOKowYv5/qrDB0lNNmkWmHbwJlZkyevbE8UJEATc0qw/b1dfg
 YJzoSkg685htnDsuD2EJ9pWRM25teHdzdQy+oO9/om8xormLAs66nJOZtFzd8RaaiVFmQQC09mX
 zcAFpF0qhB38TNIrwa73WDCmGOWyZLFUmdxcMxFX+pfG7i5WI7CvmHfmCQ9L82gkjuW0DJTiS0U
 EX1qLXxsE/2GEgQ==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIwMDA3MiBTYWx0ZWRfX7hjgh1kCC8yM
 Fdu1gPSyJlAgsw5FGRRrWFWJtAGaQ4GslaxHp4Itf4gIhjxxqUSU1yZ1uHH88rA3wxzKaUPXdRr
 1SSO36kChHJE9gPPjRKNRUdDEGuaAXvxxYlMrpIt2CGXGp19YhbGtNC/Gv4AkZP2o9EFVoOu13i
 JRfTC17XgyH8D41G6wJchhZQFdny45PswJykPe2YFrGp5W8GjpQYKFC/YadXjQxWIYJfghu93cR
 3jM1slOp+YgtGXUNZPVDFko7dwA8SdNp9/qn52H2kBvlTpQpZ5HanWJDZDL3aCFaMuO7yZTP6Ed
 swUxXAxkiA7XQqmfxGmhEZXV/wxoER15kEwCwlRTAW89fljzRvjmSOhsy4okMY9CAB5bAqGSaiX
 xE/75v2WqvN5DPZbdwEFRlb6ecu2ShxkdEvORWyDwgmIwRa+85hxXAAE1JFbdGI0bGEx/s2+xLl
 R87EAzybcY3MlljfF7Q==
X-Proofpoint-ORIG-GUID: vQi4Febpxc5HGnnrtSEIj2FQB96alYsI
X-Authority-Analysis: v=2.4 cv=Vuouwu2n c=1 sm=1 tr=0 ts=69981a99 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=Sq0TCQXOQfRWv73L7AsA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-GUID: vQi4Febpxc5HGnnrtSEIj2FQB96alYsI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_06,2026-02-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 adultscore=0 bulkscore=0 impostorscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602200072
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266847-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,msgid.link:url];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 76927165A3D
X-Rspamd-Action: no action

Document the QMP UFS PHY compatible for the Eliza Platform. It is fully
compatible with the PHY implemented in SM8650, so use the SM8650
compatible as fallback.

While at it, move the QCS8300 one so that the it is sorted correctly by
fallback compatible.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
Changes in v2:
- Fixed the order by moving it below X1E80100 so that the fallback
  compatibles would be sorted, like Krzysztof suggested.
- While at it, moved the QCS8300 in first, so the sorting of all fallback
  compatibles will be complete all the way.
- Picked up Konrad's R-b tag.
- Link to v1: https://patch.msgid.link/20260219-eliza-bindings-phy-ufs-v1-1-1635e7b53049@oss.qualcomm.com
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml        | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index a1731b08c9d1..9616c736b6d4 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -16,6 +16,10 @@ description:
 properties:
   compatible:
     oneOf:
+      - items:
+          - enum:
+              - qcom,qcs8300-qmp-ufs-phy
+          - const: qcom,sa8775p-qmp-ufs-phy
       - items:
           - enum:
               - qcom,qcs615-qmp-ufs-phy
@@ -26,8 +30,8 @@ properties:
           - const: qcom,sm8550-qmp-ufs-phy
       - items:
           - enum:
-              - qcom,qcs8300-qmp-ufs-phy
-          - const: qcom,sa8775p-qmp-ufs-phy
+              - qcom,eliza-qmp-ufs-phy
+          - const: qcom,sm8650-qmp-ufs-phy
       - items:
           - enum:
               - qcom,kaanapali-qmp-ufs-phy

---
base-commit: 50f68cc7be0a2cbf54d8f6aaf17df32fb01acc3f
change-id: 20260219-eliza-bindings-phy-ufs-3d95c2377aeb

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


