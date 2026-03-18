Return-Path: <devicetree+bounces-277105-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EN8DK2h8ummTWwIAu9opvQ
	(envelope-from <devicetree+bounces-277105-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:20:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E10032B9CAC
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:20:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EE9553007A70
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:20:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 488A2396B68;
	Wed, 18 Mar 2026 10:19:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WSMl3P9s";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jfZ+47zp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B0BB37883B
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773829192; cv=none; b=iMxT5+TM1AMbMfhlmoab3qKZFQFXy1yJP/YFGhCT2OUXCklm47GfH61aZLPOy/7pFL1oxAZ+E27Iza6dIswoRuTHB+ursW9nH7SuZ7q/CySfVJoVLKM1G316zRW2w6JY8cQVlbanfwBzs8FPBw6MDZuFWBkmKj62p4Ww7OdXGf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773829192; c=relaxed/simple;
	bh=rRAQE/TF1P0D/n3S3r1sZF2lhnZ35dLZ6Ko++1C73Vw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jBRLDSo29EDtyu3LqQnpzJCKxmDnUnPhqvveHXjesoVk5uIjdn/87NbmT5X0oE+iEjRH1Y4lLOiYnUbb73LJXDR7mvYt9joH/YhfhMigkDNTpnamMbX1V3JtTTJ19s2ozy9Oq6Il0VnYHOCXc2RjFaHZKLo9pW4ivGWG40eynwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WSMl3P9s; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jfZ+47zp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I956Tu084728
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:19:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	W5inK0nLK5d5MEUUkLv+acqBti7aPv1P59fFwLYeB9M=; b=WSMl3P9sUa31Jtg5
	DDDXgF4Z2UQaThQ2sblmITFJwi/Thr4aii43vLbZj3mOrZgQx5C5tyV7uzw5cO4m
	jmRGAQE26ZvNdVKzyqJqCc1kEh6GQ2ElrG/H/krF4pZ62z6jRiHb4z24YyZ7zVYV
	CnY/ua/+seiXR41urS7C2jyj094im+lx0EBEU0DVipTyv54NOHouWYWZjIUFCmWT
	Q8vRbz7WpsfFJbo2TtfYDsZDy/RD4FiZtcMCgv3wL9ozhBEHsinJuanBlCzs2tzA
	9NwMqvYKfle+RPg/J4c5M2E0bY5epFfk9u1Ju8Noqdg1VKrBdTaVCQQYonKk5lCG
	k6wsEQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cykqessfn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:19:47 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-50921f7da6dso13955791cf.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 03:19:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773829187; x=1774433987; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W5inK0nLK5d5MEUUkLv+acqBti7aPv1P59fFwLYeB9M=;
        b=jfZ+47zpRkJQzBNMBdovIae0OgcoUPABy3IQYruEzb2jxbHIAUAgWbBfacahV5J2BG
         dddzR/nm6AO3vOXHC2oEJv9AIl+HuzYfXKJKxykxkTi/2SPx8K9RiRm8sjKf02Eq/NLA
         KlbGMr8Kdr29g7cWcKnz9SSWC8Dj3pQggs1SIllZM3u7dkQp2E/pxvxPVMAFsJBcpmhD
         RWdM/HFR7Eyu1NMaKJ6RJyU3rXlPz9R98wrRFibidVJVHjxvTTwcqpebrxH++SIgVzlh
         ltpNtuJjl+SrMaBwq5gYymSeH/l7LDZT51joRyYDfAumqC89htheJ3RcZoa/rpz4atQI
         csTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773829187; x=1774433987;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=W5inK0nLK5d5MEUUkLv+acqBti7aPv1P59fFwLYeB9M=;
        b=D2/eZ4Or9k24JWUO8xHwfsxwh9VQurUCv6Fmj9//7bbWKQN235/t5CFZ+tRRzo2HsG
         xo89XrNuj+37mQDt+nydsoZSEYn4DzBdWZ5xZSW8dPY85jp3g87jdV/Xe2PR6mLSSPI7
         plHTpqQxfbsFxV4S4QOCZD1xK5cbWrQB9qXyagwZrWLKlcjzmo4e1YlFAyzb0UbpZGM9
         KDdWd+5fVdfbcUOLrYd6OzWjexMX0yFviIldN+wtXkFnitrByxc1UKMfONsdzwMzUwRb
         8BxkZVKeYXUt64Lxb6amsh3DVOeM9NcbriMhGi2viDQMYa//AhsidFbWRCsRn7uuBkfQ
         an2g==
X-Forwarded-Encrypted: i=1; AJvYcCVgWV4MGu0szoN5rBBR4yEX9wlAc34mer4W/s2gt6aZBCaO+Gi5yt9WwVyhFXE0oxglrK4/sxm9QROE@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/MwTIQPxs3HOZJu9eJXYevQcxOhGuNEduAMZbLPZ1XHsQkKgV
	Age2a5+eVpkYLMDoQdoDaMP/Gi6QN+Ecy1HheYcoldLQr67/k1DgGBAM/0OYsXcyMRo0bEckwDK
	YxyVDXuNq8DTdJGU+Z+6mK25NGOQYOtIo2f6y26+SUSILIXXjJdFsw6G14dFknueN
X-Gm-Gg: ATEYQzxx2Y4RpfTw8wEm09m87MOh81Nw6amjtY50KrrCS2SdpqU6NTEJYjwQXHf/Mdj
	hNeQDLrUdCrrN42nsN0PNzNMimGIL4Prjdb1jCa3J+1OAwggzozkHqRP8q4HvdTnDcSndyl3xPL
	Avsof3hGCk4ifj/DCTMYp6wkzXgM8iReuqin2kf/HrbowOhWGurOEifX7IH7/0byJk0YAaG//NF
	Pu45t4ICacrBOPOvTQFq/ZwwuX/wsSFBzymM8u+NHmjck/v40EkF8dZ/Yi4/rKOpsnnsqTIDntq
	EXgOt+vXmMGHHRzjizi2riW7wh8QhTHo14eUOvBg9z3YjbHQBeFjXRTgYaVNCRWuhEGd8rljF/z
	zzYb4VA7Rn4IkhE2+7AOY4iMfqnk=
X-Received: by 2002:a05:622a:14cd:b0:509:17e4:ceed with SMTP id d75a77b69052e-50b14744475mr34194631cf.9.1773829186613;
        Wed, 18 Mar 2026 03:19:46 -0700 (PDT)
X-Received: by 2002:a05:622a:14cd:b0:509:17e4:ceed with SMTP id d75a77b69052e-50b14744475mr34194301cf.9.1773829186057;
        Wed, 18 Mar 2026 03:19:46 -0700 (PDT)
Received: from hackbox.lan ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4856eaffbbdsm129945625e9.15.2026.03.18.03.19.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 03:19:44 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 12:19:32 +0200
Subject: [PATCH v3 1/3] dt-bindings: arm: qcom: Document Eliza SoC and its
 MTP board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260318-eliza-base-dt-v3-1-8a50bd2201ed@oss.qualcomm.com>
References: <20260318-eliza-base-dt-v3-0-8a50bd2201ed@oss.qualcomm.com>
In-Reply-To: <20260318-eliza-base-dt-v3-0-8a50bd2201ed@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-7ae85
X-Developer-Signature: v=1; a=openpgp-sha256; l=1008;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=rRAQE/TF1P0D/n3S3r1sZF2lhnZ35dLZ6Ko++1C73Vw=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpunw6LC2CHbn4xXmoT9u1oVQ7WJ9j7cVrV2sUU
 hu/m4RyHquJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCabp8OgAKCRAbX0TJAJUV
 ViWDEACgmzaAVRqkV/XDQdryQHBGGHYGgmCwIj8ZbGaMYznpcSjW+aOwf9a1VjGSlzvQni7q2Wx
 GHK2iVmjNUgs0fJQ+tn0Y4U+6k0YlZd32wpqS0RPwKbWwUAo147MMWOhK9InWN+q8kHaJNTL+rt
 4FytIdv6M3BDGhxTigo1/xMheSQowrgUzCxG0Tebgqk8yQEUJpDKL7VPOC36u6+X/N7/SSXeSNh
 zoUP/O5nkN89bSGhTLMYHeic671i+IVX4TRF4W/NGruru3ID0WrKnuwggyOxJLcHe7JjreOiIKl
 at5vHyC8SNZ8wylmCWRpvdKtADERTrWuH9QNRyBmK8qB3X9GZ4gKUoCOcXRhVrG1lZ2tD4fl6ie
 eFV5Eo0Ij3yPEVM+xLWLlcCqwuXgCNqOLAxP/tuwqwacSkK0MtyL6ZCeAq78c9bvROwoxDavlnG
 PufqXcGe4XlIXubcRkzYyib8MLupEhQWCE75j+55CAfRlyENsaZ9jRu/2IL2tcwGd8v9fUdFASF
 XO2xmdJEEBqr7nB9C8AEcaLRLkYD7iv6/16LOkdR6CVECpGvVfk7zECQPna2f8j9d7cuaaXCMoO
 GTKWjWnyzZRTOTXCAEpyPfFs+1ti8d8EMc3ZxICuo+nVcSQaTVXfuqmqY4uj0e4ViXLD4BK60aY
 O7Me+gJl2ZC3N8g==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA4NiBTYWx0ZWRfX8WH9Xp0rM/+G
 wYlmxkuC08GEB4bVInvuQ1PMG5Xl0tpilIbstfh4av/KcTwKeNsdWnm5vXnsGGpvc+NwRMIReJd
 zPixRi+KbeWlO414RsaNYlgeJL6aiuXJOA9SyTAmvUbJZtqVIrx1EZciQLsrA9fvGoZqw6lu15I
 yavIlkjbCXU13emU9JBTeFJdkJ53/1w2Azn8nWAaNoxTlQmSxLoU/Xgz29fnMvz+NaUtKpRs6tJ
 aue+mBXss3jVmvpdGC1NutiBQ+vZ2OJmtntYfMHBrEIkk59aJuDdYRdMSviMhvsQi0LeFsHY+LU
 sQUHVeaAPcAs9BOWkOuMukHHcpfdHqw+b7DcJ3TBLZTxrSSILNUthEFeJ5K0CYjK6VlVo6+1xpq
 dz254LDgt6fshbyZPidzO+NPLK7hiCTZuVrssE1adN8X6f2sZaZCPBJvPYpGv5HLG5qcALnPjMo
 NqL15rbGJFDF7Fa9f6Q==
X-Authority-Analysis: v=2.4 cv=Cd4FJbrl c=1 sm=1 tr=0 ts=69ba7c43 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=i_1RvGL6E7F7W66tM7wA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: DTGKJO5BN7jWPGHE3nCVZzv1Yb5ui9D5
X-Proofpoint-GUID: DTGKJO5BN7jWPGHE3nCVZzv1Yb5ui9D5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 spamscore=0 adultscore=0 bulkscore=0 suspectscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603180086
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277105-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E10032B9CAC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Qualcomm Eliza SoC comes with different flavors. There is SM7750 for
mobiles and then QC7790S/M for IoT. One of the boards that comes with
Eliza SoC is the MTP.

So document both the SoC and MTP board compatibles.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d054a8f5632d..458c98d2c2d6 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -61,6 +61,11 @@ properties:
               - qcom,apq8084-sbc
           - const: qcom,apq8084
 
+      - items:
+          - enum:
+              - qcom,eliza-mtp
+          - const: qcom,eliza
+
       - items:
           - enum:
               - qcom,glymur-crd

-- 
2.48.1


