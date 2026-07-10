Return-Path: <devicetree+bounces-324348-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5WScEqzCUGqm4gIAu9opvQ
	(envelope-from <devicetree+bounces-324348-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 12:00:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D3ED87395BE
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 12:00:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=QTfkrBSC;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=a3EHxBYK;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324348-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-324348-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6FA973065178
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 09:58:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85EB73FCB3A;
	Fri, 10 Jul 2026 09:57:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D423403156
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 09:57:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783677475; cv=none; b=cYrNYRXmPxW5bYuK4TozkdDlrbBI7aIQNGtKw6L+WHwbAkoQU3W8TPxy0pOIold5utK2CreJXGgXr8TL07wJ0VfqpioP5cJIpqe6Aeo+MsTViRyO5SasEmSP7v631F4410CNIfstSW2mrGn/Kn96hJrSacM2iCvB/v1uuxTHhI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783677475; c=relaxed/simple;
	bh=GEXkKTQcMMDP/edNVqpiosVSMOlJ5AlopPURs9YheQU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OJc4lQ6znHOwyowiAdxYAWy83nqHNFv1V6dpqSVDL7WMVQZ7IpdtHneGy6iobfL8m/lmyfEKir28UwG9VZct82rMdvIqAoakxtczIRlxW1/10sXKjNIssBmLOZJZks/8GRigOQR8f0cFoS6QXXJl8LvmHmG2yxm1n68lZXkyQ/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QTfkrBSC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=a3EHxBYK; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66A7e0Dd188753
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 09:57:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PGp6Gz4cU4q54LW0ORFzAwYhub1+CHS+HnXdjrR+z3o=; b=QTfkrBSCtwQYBIgA
	9/BP+CdDEcojUzMSbjD6hDcxDj8iBVqDkA/tXoLBhE5W51fgAlZmwbyXbWKUWvBL
	kzc1IECbrgNOXxhmMKGBQhMMz1ZMsdNX0wchJ1cbCfzFBskfe7JwuFYh4PGX0Ax8
	JejxBKj49wmapeykb4tvy/J4a8fT5DiRfxZTOergejvB7gc9TLk264PGv04zUUjq
	lK9pV0nXrZUkm0DUswJvddkTB94HlwmZtg1Zuk3p59SBj2OM5kW6tN0yJDpoP88f
	VLs4nyBA1zWz+iwb4+OFt0psbr9GyrAKA2ke5xPWpiixmTKG05dyi4MY0NYFDZv7
	wX7c+w==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4faeesuvt6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 09:57:48 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-51c110a3b6aso10114641cf.1
        for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 02:57:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783677468; x=1784282268; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=PGp6Gz4cU4q54LW0ORFzAwYhub1+CHS+HnXdjrR+z3o=;
        b=a3EHxBYKq7aRCD2vIozgBsn+Jp2M3HaBecMXWmXWuHjFcsGAACLwNNh5Ogypyk9qe1
         CBrs20BUrV0LXTBjhgNDAKtvuk7WRJCD4CfEHfCeo2AkCrEwwW3cS9KMuyp9ShYY3rKT
         1zU/S0FHCmoQJHx7TlBrrc7Hmd7KgExVFyrYrj2dr/d4u4zrw+B79StqQpRtPnW4hOgx
         gfZu67f6pA8kYbRFLzVErOzKVwO3OQFa0DvQc01GLvvvWTeFNqRhAabA+iEhXcZWhbbi
         nXcIfeSSYB1GoIelL+LxBA+ZG8itzQsZtDchZSfb2yRFGPm1iw6GkycUOOWW1MiljkYN
         DSRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783677468; x=1784282268;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=PGp6Gz4cU4q54LW0ORFzAwYhub1+CHS+HnXdjrR+z3o=;
        b=fLq11WC+3/nac8t/XM+jFZ2w7gER6IISlmhTYxDT9fb1IgpZyJxxY/JKZ1sBRaN3xS
         oorDiiQtjzDZqfUWV9s0q3NQx5plujgYk3K1IT3AULbc83+vTfUH5QyqwMHYrDIfVQUZ
         hwXVg6xKuUf4Lf40CbD0667oX3jGcNg/tKXzkvHkJ4lXc/ekEh4MAOSPa6n/bT89UGTG
         4wOI32jGXEKz0vuUORPhycXu30BAr3gB43JvL6aZvfb/GcRPUTwmoKvJXY70+z4NkgJs
         tcTL/QsWC0V7p8OnKkBBafAGA1+iicL6rCN3FE4hfGeLf9PIKzYApiFUNiVh+OBZvIDq
         FYLQ==
X-Forwarded-Encrypted: i=1; AHgh+RrZTp0CALutIrVYtiAFGEWPTizN85LPx73wvp9y3hv02X3mF3/AqYKMNpDcCKeQRqndgwHTdWtprl6K@vger.kernel.org
X-Gm-Message-State: AOJu0YyDbo5s90wf4Vq+3S7Ljm3WCjjC63Q4JD+T9OxRwPp0RTWVTxVr
	OJZv8kr4v36GkD7QiBD7vDnmmazhgklH6BoS17J43SbtEA2UlRuKAYisscILCtvMIDAg8VuCcd1
	b4WoYPxoDai7kln+8UkXJ9enLNyGiOsBEy5Z1c79QpFIzKksdKvDkjERAWM/HNqM4
X-Gm-Gg: AfdE7ckA1Pg6rOPpZHRipdC7Ggi8RyUVpcpnH++onNwkGR+bG+EuRW+PHBA3SAgU4F/
	CMauiAva/HWIxSgdTYU0fSBkg3f9AvuEaMweObgFf87Hvy1PzO18IqxrZ8OsR7Nr3GqeFGzP2OZ
	sAktdUVTAqinGom/YLVqyeX44gEIt6M57srWEQMAyHfH+QvsH71XFe64qWH/Lw2skPOQmAxZa/u
	gjeRaeTQYx8D4kXb8/Bhh8W+GuIurJOJ4Li4y+AA8VQQQVB72Zpb+tF6iXxe61TpVtoJ9tCPFRz
	VD+cCaWT4gntye3z5+aIN2L8GDIgWqu3wesuni0t2KOj0QVVLG7cgdrj8/4sZOfzbvgm2Vy3Ddu
	C6Qy25ypMk7GLUPOKgyhzJnaKZYG8zfLZiesBwnsUjjykZE+JjI05Ungt0l+Iw4qmiRzPzYlyOw
	gWA93oiNO0Cvhu+b451kOWPnGzdiK1rRc4VQhZstcjRjbeuIZmuUEbrCVEFON7S4V6sExI7eBCb
	edGcYwKsjV5CSjo5RO0
X-Received: by 2002:a05:622a:5809:b0:51c:7b12:120c with SMTP id d75a77b69052e-51c8b4bc4a3mr138323631cf.74.1783677467983;
        Fri, 10 Jul 2026 02:57:47 -0700 (PDT)
X-Received: by 2002:a05:622a:5809:b0:51c:7b12:120c with SMTP id d75a77b69052e-51c8b4bc4a3mr138323431cf.74.1783677467625;
        Fri, 10 Jul 2026 02:57:47 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.na.qualcomm.com (82-64-236-198.subs.proxad.net. [82.64.236.198])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c15dfda815dsm265357966b.36.2026.07.10.02.57.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2026 02:57:46 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Fri, 10 Jul 2026 11:57:35 +0200
Subject: [PATCH v3 09/11] dt-bindings: connector: pcie-m2-e: Add vendor LGA
 connector compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260710-monza-wireless-v3-9-46253587af64@oss.qualcomm.com>
References: <20260710-monza-wireless-v3-0-46253587af64@oss.qualcomm.com>
In-Reply-To: <20260710-monza-wireless-v3-0-46253587af64@oss.qualcomm.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-pci@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: kPyywzjC8R1YnIayeE9cxWdigWzBcZQs
X-Authority-Analysis: v=2.4 cv=bbpbluPB c=1 sm=1 tr=0 ts=6a50c21c cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=MDeckJw97qnk8wCBExTehA==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=M8sXMW5dAYDte-7YvdsA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEwMDA5NyBTYWx0ZWRfX7yKG1sSqLrOR
 XxeQlniZr8kVCfFXKycq6tQYr6YjF/tu0SdQAE6aFrjKr/an5g7Esj0z/JAcUmJUypL4D1GedpU
 G2hHJU/gvnwQdsDuNCYUcPRko28/yes=
X-Proofpoint-ORIG-GUID: kPyywzjC8R1YnIayeE9cxWdigWzBcZQs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEwMDA5NyBTYWx0ZWRfX7aQvgEJ0Q40U
 OyUcwFFDNhlIOIPEz4DcsrFUGMnvsVbkA+26fawhQs2hxkWJI/EiKZwK4bFJb3vnLnrzLJHHQ4w
 TMFurKmoc+3rGHvyK+brJ1OuZrkP/p33G7Y5gJxoVhwosz5BjFOX0W27i0VlM4A50dJhvFjWGx5
 5TexXQUhYlBC+yq4fRF5f5zxMeN/GVMyaGIxsRnJ0GefhGujRtLMsTnULFZwgHzPbO4RDg81bTk
 dMcA7dbYQVk+LVYd+PWpw15kiS5B6BIOzllYOEvh9EtB1gTMghvywj+5mFpGVSw9kZVI6WcR/Dl
 JrnmtNXrSkMLHuTwTS0SNVJOCEO2vxHdgzh261NDtliRdUEHNcjH1j0Sn+U3z1rAzXhdKxvG+nu
 HSUtQrgwvvVGGz1YXE7OcxP74UHXWywJQNP5NTR1vL/TDQBgkqDgXxCHLLtAOSBKxyovl1mSD4k
 eBcl0hc4VzKeV6iiuIw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-10_02,2026-07-09_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 malwarescore=0 bulkscore=0 suspectscore=0
 spamscore=0 clxscore=1015 lowpriorityscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607100097
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-324348-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:mani@kernel.org,m:brgl@kernel.org,m:marcel@holtmann.org,m:luiz.dentz@gmail.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-pci@vger.kernel.org,m:linux-pm@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:linux-bluetooth@vger.kernel.org,m:devicetree@vger.kernel.org,m:manivannan.sadhasivam@oss.qualcomm.com,m:loic.poulain@oss.qualcomm.com,m:krzysztof.kozlowski@oss.qualcomm.com,m:luizdentz@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FORGED_SENDER(0.00)[loic.poulain@oss.qualcomm.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_TO(0.00)[kernel.org,holtmann.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[loic.poulain@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D3ED87395BE

Some modules (e.g. the Qualcomm QCA2066/QCNFA765) expose the same M.2
Key E interface signals but are physically soldered as an LGA package
rather than plugged into a real M.2 Key E connector socket. Such designs
are not actual M.2 Key E connectors, so describe them with a dedicated
vendor-specific compatible while keeping "pcie-m2-e-connector" as a
fallback for the shared signal semantics.

Add "qcom,pcie-m2-1418-lga-connector" for the M.2 LGA 1418 module.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 .../devicetree/bindings/connector/pcie-m2-e-connector.yaml         | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/connector/pcie-m2-e-connector.yaml b/Documentation/devicetree/bindings/connector/pcie-m2-e-connector.yaml
index f7859aa9b63469cb43919c0b5719c18694c5364d..0282c6ee9272446064a99ec6314a5ceb1721e0c4 100644
--- a/Documentation/devicetree/bindings/connector/pcie-m2-e-connector.yaml
+++ b/Documentation/devicetree/bindings/connector/pcie-m2-e-connector.yaml
@@ -17,7 +17,12 @@ description:
 
 properties:
   compatible:
-    const: pcie-m2-e-connector
+    oneOf:
+      - const: pcie-m2-e-connector
+      - items:
+          - enum:
+              - qcom,pcie-m2-1418-lga-connector
+          - const: pcie-m2-e-connector
 
   vpcie3v3-supply:
     description: A phandle to the regulator for 3.3v supply.

-- 
2.34.1


