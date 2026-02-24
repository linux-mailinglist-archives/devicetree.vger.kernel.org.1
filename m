Return-Path: <devicetree+bounces-267868-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aMXnAwSWnWnKQgQAu9opvQ
	(envelope-from <devicetree+bounces-267868-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 13:13:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B56186C88
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 13:13:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6870A302EFBC
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 12:13:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6D9B38E5E8;
	Tue, 24 Feb 2026 12:13:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nnfzd85q";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HnH9wuxb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A6A238E5D2
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 12:13:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771935225; cv=none; b=D8Q7hrbJb49cAGUiUG0ifA/fQ6O6hME2uHIXnVVL7twClsXBXSDiqHtsxx1zpNlqJ8nhblftzVHs8xAm29+aHd8Fp1/2AAAb3CPpyvum6pioT4Va6lGMAwHxfpqYUROViqFIB4RvgZCNK3T3UFVnqU8mxI4VUP/jXHaaxVRXkuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771935225; c=relaxed/simple;
	bh=6SqCoD+DLiFJMV7+MzTJmZ6d9CthQGCBcIOM7tuCgFU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=m/m6pYtDH1ERw+/T+28JnUN8mntyCRd/DcsUBLhmCflaWgtX49a7iAAyoDIhLFNjP81EPIFGN5cvHbuf4MBZeFutxnb5PmvFsfnJ48bolmzxk4/ztshM4DtkII3ZxkVk05UwtE6Y5NXa9WGEvu4fpMTYtLl9f6gNs45paW5xLJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nnfzd85q; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HnH9wuxb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61OAFYe6057310
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 12:13:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7DyibW228MGUNhkXhsKiswIImi2UhLWwyAMwA6bUpL0=; b=nnfzd85qOFI6ikQ1
	JfjFWGuIXOLGqpjDR3zcOjB8ybtXS2qV1gufBBINPGmcyccbRp42Fh4EsldxZOn2
	K3vd51/UMFvtelO70jC06a7gaUzLw7SXK652cYoCQdaXhVSM+lZQrmB5EY7YkWAL
	paHE/ZIYQyvJ+re79M1zWzopdBXLDMIO8K0jQaBu9UW1I288W1Gm2wMBgd2JPxH/
	rWQ6DBQS4eASc3Ifnj6nZDdcPf7XV7EdF03c7eizTkKBv6Qk63TexJJAVoOscnba
	ZsMK/WpWAK3mDftnZlTn515Z+a4BtkPcfUu2ZTFFmjpGRVHnC+FbDr/u+teHDpHy
	ku2LuQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ch9sa8bf0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 12:13:42 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c70d16d5a9so4251788085a.3
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 04:13:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771935221; x=1772540021; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7DyibW228MGUNhkXhsKiswIImi2UhLWwyAMwA6bUpL0=;
        b=HnH9wuxbclY2r23IEwPE/g7gxaGtZw37iRGPp79t2wWwupTmNsRCWlX0wWRn0gRkhN
         9EVdwIdhl1kclo7VkTfF0bjwNCz5XMiLNiXe9XAz6swW0NZn0pCbJgzsPQVn3DhtiOzO
         h7NDPnWLXWgZJ+0k1ZyZtVG0Ex8e6R/Mq6ltqg6TJqhr0g2o420f7ds/qR+GMRYk5ICl
         6tKbFA9el8t5FXbeXOtpLXNNgM64KuYhK6STxd5RC6gp4izfrtpYC0GqJb9apDHaxkzT
         OUvpuPjs2E98nsrrSvcOgUdwSYaYKAaP3UScpeiKH3B5bAGIDiE+9m9P0P8k1Ie3wQyL
         +5bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771935221; x=1772540021;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7DyibW228MGUNhkXhsKiswIImi2UhLWwyAMwA6bUpL0=;
        b=wR1CgDHuQ0pohQmwu1rmp4ksStk6pN+PPt8A3ARqudDZEhqWNvg5JMC4Nti/rp6+Z9
         hoOQOz+ZIOgJAIRyN0oY6iAr1piPq6NA4m82QIM8nzZ1vVZhDC1j9xcwChx8AU0AtmNZ
         zzzEdWaRnUgZkXaYxo08VeJOBI4LuBED7XJFFZEgb+L1kUArZO2kR5uV5pTn9avYZ1DR
         uhDzKExDb5tIZHrdYugbM/CpmbEj2JUF6X0dtZplCIIJlWp1k/NiflAmNijYBlauAEu/
         fzle2m6DEkNUk2I/lZ7TavNeKqKX6MfQT46k8SRZ/Rhq8ik6C21aw6Fmjx90iflaZOB+
         ojUA==
X-Forwarded-Encrypted: i=1; AJvYcCX/YOifUDuxAzdwRzBXxLT58urgAdd5NSowParDBuYT/HiEO6OkAl+vRofegUrhx1mJDefP8k6MESah@vger.kernel.org
X-Gm-Message-State: AOJu0Ywd8I0pOKbz3rnhtA3RJBk+ohGXPKS9g92c+6urRB/v5Emxck7U
	QrpCu3DxTYqTEtgDSUM4Ywo6J0vtqjsDYZEC3L+D0J41gSnVuoGbQ6xGFqJX4KPD7WxIIvw2foA
	1kjzW7wDzRKqNW0efeuq+MhGMDBkne2Zfl56gqTOB7z4/9bvdX6Zfx+Vr/YonpbpPKG0oSSfa
X-Gm-Gg: AZuq6aIYe0Zo+4fRr4TUtsBXitKnzTYCyPK3mkCa2r678t6QgLOund/MgH1kgaNGpIS
	qwN+gGJIG9iS/0mglYEkc4R6rUeKGr3kszD0qp8KNT314QFYwaf6F5RYgDeHMq+p8Wf5blrGVwm
	9wuavKO6e7NPPIdLpEil11CH9lXGWaXhG1/5LKnZMhXIf+o0b1gmeginpE2kqKisXa1fghfekMk
	0tJYy4+r92Un+ilC4pdhiEo4AwzRNAc2HHResJBuzSsunDOxkQM5yskPThQb1buMEEiIToc3hJK
	8U+3ymMSYce8qcHOD7nVBin10PZxbX2F1/CK7NXqRzcHJILHhUO8jEoyLyQ8P99AEaTmPWitCUt
	ANOV0/NR5m79/oCsjoErG/Mha6zgj7g==
X-Received: by 2002:a05:620a:4891:b0:8b2:eb66:c64 with SMTP id af79cd13be357-8cb8ca02e0bmr1501395885a.29.1771935221369;
        Tue, 24 Feb 2026 04:13:41 -0800 (PST)
X-Received: by 2002:a05:620a:4891:b0:8b2:eb66:c64 with SMTP id af79cd13be357-8cb8ca02e0bmr1501390685a.29.1771935220705;
        Tue, 24 Feb 2026 04:13:40 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483a9cb4bb3sm262741255e9.14.2026.02.24.04.13.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 04:13:39 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 14:13:25 +0200
Subject: [PATCH 1/3] dt-bindings: arm: qcom: Document Eliza and its MTP
 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260224-eliza-base-dt-v1-1-54e8e3a5fe43@oss.qualcomm.com>
References: <20260224-eliza-base-dt-v1-0-54e8e3a5fe43@oss.qualcomm.com>
In-Reply-To: <20260224-eliza-base-dt-v1-0-54e8e3a5fe43@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=922;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=6SqCoD+DLiFJMV7+MzTJmZ6d9CthQGCBcIOM7tuCgFU=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpnZXt7lP0oSRnagD7TfhKsoGcloSxCt3t8xhrU
 GstBCye59eJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaZ2V7QAKCRAbX0TJAJUV
 VlQaD/9MVXChD4f0nat2J9h6qx53TpI3HXrmGlPMwR8rECd3bZ+wrZ9Gu5ZqI28PmKLuOOvrgc+
 UQPXeWefcqPWpc1HGJjzzKjOEn6IwH0X9tTGRthlzOJOHlNIHbqovAS2RRCl4xqh7NAES4+Hf5M
 1FFkz8TyiX7Cfq49qpOiRYLd2DOMH5F/UvMUDa69A/2fgd1XhWvOgGp9ii2mg6wbKT8ZTT39pYu
 Rrl1zz+43A9v76nhAaGCT+JKRv4jQ82TbqWCdfoVG7e/ubyk+GWxKmG4i2nfQlvbOdnao31mPTH
 klXR1dwm3p18r63n5MIqkjhaBSPYVJAn1/7+O9W2jzs73xAVdDlkX+aD+CLoJX1UKHJbskHWdwv
 nRHUe0gXwX7mZpCh1va/eS1EC6OAu89I3ckrLYq4StS7dySTkeB7HkR0XzLogZFyNTMGJRT4x+g
 eZpV7fmmoJIjYdPi+TN8q+ujH9tv8CpsUUQsAEUjQhZefg8rk8+WYD06m8DmBNkxtuVaZgBEEIo
 N0AqdEDgjmgxSnp1GwrIZJZjn7sPW94zogEU1dd1c/aMmCr18Jn14bYhVr2QtWP4EL/gIGiIl1Y
 d7xIy81zW4e+yB+AiQj/b6OAFucv7tlu6bkB93adycNckp6QVRyypISJ9kiKltgz80EWye83eZG
 rGt1UvEI1n6clkw==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDA5OCBTYWx0ZWRfXxeFX7rH3KYpS
 4yUUBq7fB3YOylnZ/Ebn1oijiBlMOp0yJKVogf8xzpV3HUKNGXEYpkkX40+R/6AvvIyFyKU3s3f
 xHCByusV7cWk353FOwTnuUOOm7ehuCx/5OWJJBbak+DVQCDTkrp7kXjwtzVGI2zMeTAGlfH0UL7
 eNAe1LWshgz20p2WpEwC5Lp7wa18z65nOgKfYVlz5gzRreSIwBc7Uj9U6xetdhS6wSyTMBK6KqJ
 JZC4UgMlU2MmQETXGnMP7tGZRubVGDTrfj9I4kIS7bwKDbMLBrlBAHgyR8GRWQvv0OvXlP1F/sM
 02E9ut2DBZH8PcR7MxUVwfeNg+CmHgMZqmyuyu5wBm5FdXbZZ+jZWltC2sPsObePcGjnkFru0Jt
 KadFPlLR0dEeuWev0FzVlYksyX0UOHSTdC5Yd/lE2TjdiIPDEMsGivD20qCC6zDpZQdLeBa/LYU
 rKtEyInFxtuQzdkWCjA==
X-Proofpoint-ORIG-GUID: EQ7-c2K0qIpcq6FcM84TXSaL7L6KvLKY
X-Authority-Analysis: v=2.4 cv=e7ELiKp/ c=1 sm=1 tr=0 ts=699d95f7 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=YWYvk099QjiUCZJKg6UA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: EQ7-c2K0qIpcq6FcM84TXSaL7L6KvLKY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_01,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 adultscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 clxscore=1015 phishscore=0 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240098
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267868-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 93B56186C88
X-Rspamd-Action: no action

Qualcomm Eliza is a high-tier SoC designed for mobile platforms.
The reference development platform for the Eliza SoC is the Mobile Test
Platform (MTP).

Document both the SoC and MTP board compatibles.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d48c625d3fc4..3e5316d13a9d 100644
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
               - fairphone,fp6

-- 
2.48.1


