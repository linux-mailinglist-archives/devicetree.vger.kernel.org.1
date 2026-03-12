Return-Path: <devicetree+bounces-274590-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wF+aCeC5smmvPAAAu9opvQ
	(envelope-from <devicetree+bounces-274590-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 14:04:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8981A2723A2
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 14:04:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EC7AB3184AA4
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 13:01:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64F263C5530;
	Thu, 12 Mar 2026 13:01:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ib3b8G/Y";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IQ89RUSM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E033B3C4546
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 13:01:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773320490; cv=none; b=MCQHjdaElmdq2JfQ/3698xE2jDNQJu7irmHYY4L4oMfHNR4LzfX87Du9jxoCUUxhSOGvOgYq+OqfIk5QFWozP7R35pq2xerLLfAsjySljKN+3Is9g4htqJLaFVrcRB8dSw8El4Tc9wFPKluushX6fZghENxjLOszPlQ97ol5ykw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773320490; c=relaxed/simple;
	bh=c9qTGlM1mbtZADnyMUzaIZXw9eTKM1g457AGHgLifNw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=lus8nzdaWG7sOZVZeia9bHUubVI2IyW24BuxoUK0gPL2g/VCiSdNhDtbykS2c9olBFi5m9Ie9+xSyKqO2UCYS0RJ7HWVxNTylGUpbP9WAgAf6T45yqoVmPYSKn/9H79fxbwOW4KWVh+67pkKsL+daUwmDAUgfX1PRDzgxkt8rtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ib3b8G/Y; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IQ89RUSM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62C2brre1740582
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 13:01:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Rg0LeG2M4qW3Fgz2/GI2ig
	0YOI3YtmCwQIQGf5ultIc=; b=Ib3b8G/Y6tiAZbKNhDpxkKiAKDtcyy9aoWPVD7
	x1sJKrLz1xdyBoWzyh70E6QNkZTsjqu/Jxgm9k/+xHRQnaG0TsTqJt599LWILhVm
	gOHyq23fElQaGfelC+tFTEuvKaJDgL1pBCUZTwxH8t1SqFJybA0dy1QZJVK2kipL
	DJBg+NQp62QTjASzavpbjPPvkdOu4ttv2iklTvaqPuV9zNNYgl9j7x8dcu34aGoa
	rwblLDJrFMBeYYneyXAzMGrqALXFlFgBILPO7txhMQubrzuNS7OMlLZnYJrl3Wuq
	k9vGTxB8z1wtJZ//gyIz6UPat7zQZPmgG1BH9qFE27132poQ==
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cumvdhg7y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 13:01:27 +0000 (GMT)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-7d777c61520so4496355a34.3
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 06:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773320487; x=1773925287; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Rg0LeG2M4qW3Fgz2/GI2ig0YOI3YtmCwQIQGf5ultIc=;
        b=IQ89RUSM0vkq8Lo1l6hsRx2ohbzXRa3EwyaKtTbcZVlajWcBH1n89AmyeL8E//uQ0r
         5F76avax/6iSeF+TfYHhH/mD3PXtA9K+IrhOveXSTDJBs89sV7ZRlOIfIm/RBGz+pu2J
         sA/gjdSaqCZp3xyCRFzBxTcdMCeBr6RZvkBHreDoIm3dfoIUwIBK00IZwnyUyhWNPMRX
         dGFZpi7fGhuiKZktTUVHqSwiUjq90/HjIwFnu10dOOwA5PLya8K0HqMz3DryG6AzHPaD
         5vpLVFMTjF4mQNUjmGcI4RyFke0B7m1N+8ksQeM06w1Ipv+o0FCsyV9JVlCPChD7LeKz
         Mt1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773320487; x=1773925287;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rg0LeG2M4qW3Fgz2/GI2ig0YOI3YtmCwQIQGf5ultIc=;
        b=guvIqoTMUOYeWndRxj4/YZP0GJnTHBH48k22WXmJJWtFPPBig8LxPVM7ZMYyBMVQbA
         CVq87aEHC1+GIgcSd8+sviHGhVFexYCAQZ21Y4fZ5iScY6CZutGHxwotxSubaRqt43AD
         D4weNeMWLDl6uXSALZ6If5ZGRrkCTxGli9t3PgSAzXIMUNFXBs3IO175Ef1u/K7gz1Hy
         Y9k1D2pRPhDpIlIYq0YBbhT39ksR2/FmhVenhxYKL8hkC3bmXynHeUOmGeQ/WoRSwfy7
         7mx4oHxfLcifJxmv7gsIROb5r8EEX8vVOEo524/vK55+8VIJMM5SVUSuLGwa+qBnsz0K
         rssw==
X-Forwarded-Encrypted: i=1; AJvYcCX0TPoO1gz7g9b0GxA+63YwuGjt4Q0Yzavk6K5Uk0GwatTwLhf+YRRsHZF8F7A1Zviz1tNhVSi4d+R1@vger.kernel.org
X-Gm-Message-State: AOJu0YxRcwljDysuysHr9On6VQ0ADExFxIS4bPkarEDrbBNhj/mA0m2Y
	II+qzsxsd644GNGsQu66YvGE2HcMz6TBAbpn0QIJT2RgPtLdx+0MOCJyDTYPIRFAyjkGzlczmLZ
	+0CIDsQSBLmE31GLyQYHSFrpAQXATyJCodTIz6eLH42iy5rlBUwb7h+BqUTRvfyV8
X-Gm-Gg: ATEYQzzGkTA3oz8APodrsGMcC9PgkLhgHYV3ePrbip4MC1Xb1TNUajrYU18povWr68/
	rsGDGIGLTx9/S/l7Q0KJiv2BzQ8uqJp+U3tVUKLnw6mY2uAkUYl4OIZlHtj2/JxwdWWFJICrF1Q
	tqUok/rXE3h3lYK6GhxRQdW1Uy5j2qFO253nGU6S/HXrdxEa6PPjIm+/L6oXMySlpoSHRVJcDd7
	0/RK/LRPRvDv3stFFrpykkGrMmAbxhBJnNFDKucOFG5LOZrEUHeFY1P8kCnYQICm2VOfEXwNz4K
	ZZBfihokdOZiGbcGl4PofsoK4XlNYxyotfAB3mZkH7OWXDgjOYzBZvDmU/6vUb5IDwO23cwpByr
	jweySA3GHsZH3JPg8/A6eHLu5tQs=
X-Received: by 2002:a05:6830:81d7:b0:7ab:e111:1a57 with SMTP id 46e09a7af769-7d76a83dddcmr3388293a34.31.1773320486880;
        Thu, 12 Mar 2026 06:01:26 -0700 (PDT)
X-Received: by 2002:a05:6830:81d7:b0:7ab:e111:1a57 with SMTP id 46e09a7af769-7d76a83dddcmr3388257a34.31.1773320486217;
        Thu, 12 Mar 2026 06:01:26 -0700 (PDT)
Received: from hackbox.lan ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854b6756e4sm150083515e9.15.2026.03.12.06.00.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 06:01:07 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Thu, 12 Mar 2026 15:00:42 +0200
Subject: [PATCH v2] arm64: dts: qcom: glymur-crd: Enable keyboard, trackpad
 and touchscreen
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-glymur-dts-crd-enable-kbd-tp-ts-v2-1-2277bee4c564@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAPm4smkC/42PS27DMAxEr2JoXQayk0iRV7lHkYU+dKLWX0k2G
 gS+eygnBbrshuAQ5Mzjg0UMHiOriwcLuPjoh55E9VEwe9P9FcE70qzileB7ruDa3rs5gEsRbHC
 AvTYtwrdxkEbIwxO33Bp5UgfOyGUM2PifLeHz8tJxNl9oU7Z9bwScZopOrzVmdESwQ9f5VBeN4
 lq7prRCWvYXiygzVElQmWaig1+6TKYd0bkR+L7h1KOSR14vB5Yhbj6mIdy3r5dyy/z3g0sJJRw
 Fkq8USktxHmLcTbNuM/GOCrus6/oER+Za+FoBAAA=
X-Change-ID: 20260309-glymur-dts-crd-enable-kbd-tp-ts-c80c0cb78940
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-7ae85
X-Developer-Signature: v=1; a=openpgp-sha256; l=4897;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=c9qTGlM1mbtZADnyMUzaIZXw9eTKM1g457AGHgLifNw=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpsrkDM66NgJaYlrzmTZV5v4J+bmZk9aKOvkaXp
 0Un9mpGZu2JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCabK5AwAKCRAbX0TJAJUV
 VinOEACgMnFN7MaeRj+ZE89VPRn0vIJElIveUCzBy7e7aKqO3pFxdPgvV1pvoOWrwSDLuGev5KS
 tyEKOj0Vpj2n4Bh06KdXDBIakZgn1OQsr6Cd7tmWt+MuE71vwcMnkvTE60pKVI4kFY0jDUScBDC
 cJWlkew/pWWw6PUO4usKieW4OSXue6XVlzY0OX26A7WFN+oUpAqjVhL5x5YBdJOQ8nFGYxTW4+2
 94DnvwhQqshfuFvg0M6OKldrGPlXqUwxeEN0oIjgGq1JixkAi6D0zcV/hgtLQqEidzz7nGdKR2H
 3PlDDHOhm8iOPoJ0AzqmBdd61XbssGBd7dmZ31tVHF9Hw3b0zE+GRAeClaoCOlwFscWuq0uCd0v
 TkSBUImD0GwetSG9zaG2YHoPfgxFwqubSYaN+fmwTV5ZFBWDuK07YwpPdsRaLUbgNKWziY/8eZL
 t2L/JpwBX2ODl47BMtaQ9qG5Iu3O9LLJbJ+DCa/0XG9JVHydbIJDY0mGAByWUmxzXRGa/6YuWDo
 3zkh60N79AttrdXkBA36tuQhsLmY5kHCy19iY0Ns5Jer5PfyLfr1jD/H27j1geVCJojjpC256Id
 0dmRGJDRgW5qQ1NXHeZmzZwqdfzzmNrRHW1tTFIHZosy67ek/SmXn0ijXrE0HtRJMXpeLW+CESM
 u4PqTeXtWIFC5ng==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDEwMyBTYWx0ZWRfX/wKG5skd7Dyq
 B6+FdKtX/UlTf1tXICyGL8C0HpVSBpZqb8D5WOuvZBTUfNGqjYfu6sfFRHy0HCGSaB3L8ZFh99k
 uE11LUDrrnElcmLGQMiNFgBXm8u7xXJxdsuMgUTFiH/bcqqi+FXPGPMb72V1eSQFqVRcEIW/ZXc
 fVtBZzaNVL78u3W0dqv+99llU1NaOg+X12b4fb3UqfBU4+vs06T0TKAcL0XJYLvByHU4HNk+Wtc
 13S5gKHzsZei/QE1QM+/ClPod4/nQsXyPO76TKaMv5Lfc2k41dNbH5BPGtB9h+7/3m1dx5ricdh
 ALRo9EXF9NkMkDrxqyCiQxZe57aW0vOsOF2njAJ9nQ1qyW/SNS0S41vX4aJucG+hdJ3iuJ6oiDg
 ga9xRimqGdtFWQY9HRsOB6BZ8Uo/Z/5ajiVQ1plkJfj9mcLtRnKiAJptcfK2SxfCijHZc9Ph2Wo
 TGBrztZ7yYyNCFBIwWQ==
X-Proofpoint-GUID: l5JOhHM5G-eXwSwg9oBBAvUwFLr1UxXR
X-Proofpoint-ORIG-GUID: l5JOhHM5G-eXwSwg9oBBAvUwFLr1UxXR
X-Authority-Analysis: v=2.4 cv=XsT3+FF9 c=1 sm=1 tr=0 ts=69b2b927 cx=c_pps
 a=7uPEO8VhqeOX8vTJ3z8K6Q==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=PmoVyoobU9LGoXBsNIIA:9 a=QEXdDO2ut3YA:10
 a=EXS-LbY8YePsIyqnH6vw:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_01,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 bulkscore=0 clxscore=1015 adultscore=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603120103
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,msgid.link:url,3a:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,0.0.0.38:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274590-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 8981A2723A2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On CRD, the keyboard, trackpad and touchscreen are connected over I2C
and all share a 3.3V regulator.

So describe the regulator and each input device along with their
pinctrl states.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
Changes in v2:
- Rebased on next-20260311
- Re-ordered pinctrl properties in vreg_misc_3p3, as Konrad suggested.
- Dropped next level dependency patchset.
- Link to v1: https://patch.msgid.link/20260309-glymur-dts-crd-enable-kbd-tp-ts-v1-1-56e03f769a76@oss.qualcomm.com
---
 arch/arm64/boot/dts/qcom/glymur-crd.dts | 117 ++++++++++++++++++++++++++++++++
 1 file changed, 117 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
index 38cdcf662ba7..55bdad46eba9 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
@@ -13,6 +13,8 @@
 #include "pmk8850.dtsi"         /* SPMI0: SID-0                  */
 #include "smb2370.dtsi"         /* SPMI2: SID-9/10/11            */
 
+#include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
+
 / {
 	model = "Qualcomm Technologies, Inc. Glymur CRD";
 	compatible = "qcom,glymur-crd", "qcom,glymur";
@@ -139,6 +141,23 @@ vreg_edp_3p3: regulator-edp-3p3 {
 		regulator-boot-on;
 	};
 
+	vreg_misc_3p3: regulator-misc-3p3 {
+		 compatible = "regulator-fixed";
+
+		regulator-name = "VREG_MISC_3P3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+
+		gpio = <&pmh0110_f_e0_gpios 6 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-0 = <&misc_3p3_reg_en>;
+		pinctrl-names = "default";
+
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
 	vreg_nvme: regulator-nvme {
 		compatible = "regulator-fixed";
 
@@ -446,6 +465,64 @@ vreg_l4h_e0_1p2: ldo4 {
 	};
 };
 
+&i2c0 {
+	clock-frequency = <400000>;
+
+	status = "okay";
+
+	touchpad@2c {
+		compatible = "hid-over-i2c";
+		reg = <0x2c>;
+
+		hid-descr-addr = <0x20>;
+		interrupts-extended = <&tlmm 3 IRQ_TYPE_LEVEL_LOW>;
+
+		vdd-supply = <&vreg_misc_3p3>;
+		vddl-supply = <&vreg_l15b_e0_1p8>;
+
+		pinctrl-0 = <&tpad_default>;
+		pinctrl-names = "default";
+
+		wakeup-source;
+	};
+
+	keyboard@3a {
+		compatible = "hid-over-i2c";
+		reg = <0x3a>;
+
+		hid-descr-addr = <0x1>;
+		interrupts-extended = <&tlmm 67 IRQ_TYPE_LEVEL_LOW>;
+
+		vdd-supply = <&vreg_misc_3p3>;
+		vddl-supply = <&vreg_l15b_e0_1p8>;
+
+		pinctrl-0 = <&kybd_default>;
+		pinctrl-names = "default";
+
+		wakeup-source;
+	};
+};
+
+&i2c8 {
+	clock-frequency = <400000>;
+
+	status = "okay";
+
+	touchscreen@38 {
+		compatible = "hid-over-i2c";
+		reg = <0x38>;
+
+		hid-descr-addr = <0x1>;
+		interrupts-extended = <&tlmm 51 IRQ_TYPE_LEVEL_LOW>;
+
+		vdd-supply = <&vreg_misc_3p3>;
+		vddl-supply = <&vreg_l15b_e0_1p8>;
+
+		pinctrl-0 = <&ts0_default>;
+		pinctrl-names = "default";
+	};
+};
+
 &i2c5 {
 	clock-frequency = <400000>;
 
@@ -626,6 +703,19 @@ key_vol_up_default: key-vol-up-default-state {
 	};
 };
 
+&pmh0110_f_e0_gpios {
+	misc_3p3_reg_en: misc-3p3-reg-en-state {
+		pins = "gpio6";
+		function = "normal";
+		bias-disable;
+		input-disable;
+		output-enable;
+		drive-push-pull;
+		power-source = <1>; /* 1.8 V */
+		qcom,drive-strength = <PMIC_GPIO_STRENGTH_LOW>;
+	};
+};
+
 &pmk8850_rtc {
 	qcom,no-alarm;
 };
@@ -664,6 +754,33 @@ edp_reg_en: edp-reg-en-state {
 		bias-disable;
 	};
 
+	kybd_default: kybd-default-state {
+		pins = "gpio67";
+		function = "gpio";
+		bias-disable;
+	};
+
+	tpad_default: tpad-default-state {
+		pins = "gpio3";
+		function = "gpio";
+		bias-disable;
+	};
+
+	ts0_default: ts0-default-state {
+		int-n-pins {
+			pins = "gpio51";
+			function = "gpio";
+			bias-disable;
+		};
+
+		reset-n-pins {
+			pins = "gpio48";
+			function = "gpio";
+			output-high;
+			drive-strength = <16>;
+		};
+	};
+
 	pcie4_default: pcie4-default-state {
 		clkreq-n-pins {
 			pins = "gpio147";

---
base-commit: f90aadf1c67c8b4969d1e5e6d4fd7227adb6e4d7
change-id: 20260309-glymur-dts-crd-enable-kbd-tp-ts-c80c0cb78940
prerequisite-change-id: 20260109-dts-qcom-glymur-crd-add-edp-03f0adde9750:v4
prerequisite-patch-id: df42484b224c01014637ec5a8f56bab459890557
prerequisite-patch-id: d986d8d948eaf7b80028b2244750dc7aff7de307
prerequisite-patch-id: 7ec5f802a334d96421d8f95d4d9e9773655cc947
prerequisite-patch-id: 8d9e016b49979fa817cf9eab70b809fdb9d4656f
prerequisite-patch-id: 6a291fd702870ca28d64439313d498593996b741
prerequisite-patch-id: c96958ab5c5605fb9577645ac5bfe5912cdfebfe
prerequisite-patch-id: bfa283218723a48e54fcd842484b004c877339b7
prerequisite-patch-id: 346f2db0933c551a039f63b945f989a5c8320657
prerequisite-patch-id: 919020405b70d588fa4356a5cbfb44e67006102e

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


