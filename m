Return-Path: <devicetree+bounces-270018-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cAS2OaWRpWmoDgYAu9opvQ
	(envelope-from <devicetree+bounces-270018-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:33:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D4C1D9D42
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:33:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C17AB302F238
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 13:30:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92A263EFD39;
	Mon,  2 Mar 2026 13:29:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kZkNAMK+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NtQ/Z0Hq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58236387597
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 13:29:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772458183; cv=none; b=AYtNbIKb8VhdXX4x5zCJSKQ2mEAh75RjHGka5uBPKI5W/N5hC43C8TjaTsHLenSPbnHJSpbpKn8JyFb1oUfdpRQi0wcY0Urg5kyMrZLOl6M7IwntaiqM2sNkzyVhl+lOkumsZeIxqw+q/7YL714wKrrscEPs+9gTkSUYtZSF9zI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772458183; c=relaxed/simple;
	bh=JmCKMSZ99k52JgM1yUT7vCu4cn9pkfemr21UsbLLGFI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Vw1WbL+gwO9ni5sIMCKarOFqNwHsa8uWYIaygl3lt/zW8okxVFBVqVdmMK/hR3PjnU8drxVQwovbgA7F9pVmQXdwqwJt1GG24+NFwVMhrBL9SR5beRIxGP+QTOwZhB1txxeXOiPdOIJ1vDvZ7vKs2pyudH7DETCxcgROAr7uvX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kZkNAMK+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NtQ/Z0Hq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6229K3OP782736
	for <devicetree@vger.kernel.org>; Mon, 2 Mar 2026 13:29:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oY8+PqH7o/csX+69/fLbUX81Ekr2b1hKUFSvV8uMb9E=; b=kZkNAMK+A6ARsPR2
	AygyZabBpl45DCTjPmcZomhSLwrqRjGD/A7lqCWY6BFxl0qnVCaXRmEM/tcUeY3a
	UF3qySNkCjZwENgizoSZuOyJC0SiMT3ewqsGTgvOxe94G87YiIq4zqPRzwgk7bkI
	QqB4gdm+8tlCjvKIiLe316zgvcEa4B5PgivCKMQfyXmzkqY+Zsudz3TAcb3NiUM2
	kliCI1qV1caw0fkoak+l2pdh+Y/sTevrdUDZngk0Rdu0j9Z31Kl9b2bdJAqRAoL6
	OR8y82BPPDJpmatIB6CtyJ5rD/L0MBHacDeDBEOTG1IuyKwRAbRvPOXY0E/PQ+Ho
	5Q91Ig==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cn7u00t0h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 13:29:41 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c70ed6c849so3404216485a.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 05:29:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772458181; x=1773062981; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oY8+PqH7o/csX+69/fLbUX81Ekr2b1hKUFSvV8uMb9E=;
        b=NtQ/Z0HqNG5WxH7iWTmCZz1PWxupX4ffmuyDB9BzYy/FVDVDsmrV3gelg81P3/D9tV
         iH7HGN4ISP9AgFeeHz5zcCc2paEEnAbbwdx4hXGhqa28g3bfg7ArTzJySjVJGRZfgVuZ
         3PlAubc2RVtpUD9nooW+Xhg64EhPbUNmCu35OnZ+OiM+9192pKEPQtgnR+Dvt3yLm40m
         gSVOxa9BVJF4HBXakaYYabMH3QkdvNvJkJ9OFxB/SZId7oEhJ91qrDPMpzn09zFBPn1U
         cjOENlv4GHw4twkNeamZ6edwrSiy0mOt94BlAtqWEl8snB9waTADjXLrNsQ3p3KB1vSf
         Fk1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772458181; x=1773062981;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oY8+PqH7o/csX+69/fLbUX81Ekr2b1hKUFSvV8uMb9E=;
        b=VsnXDhP2bKWZfw8ictg5jGM8dGsUsTNNShmp0b89dXUO6F8sxCJScDvWhJp0sQYKuR
         7GeGlIioRli/ZdPnCHRJZ1Gkbq+owpDLU0ZcNkqN5soEj9m62MU9ZLSQxglsyTHVtDyf
         uqTrGXJ0U/HHi84B9aLmnt4AQ7ZKYJg5mJ2Z8p0C6GocQ4QzGHB9qrzKSUKeiYe/8EOx
         v/4iV24bIvJsiPIikWU9OsCVZgvCKmMGJECwTHatafrE9aPUBKkTQMAS+8iC8Y5xIe4F
         ciDgbKTVn8x1gNZbhO5rCK7iPTswCG9GcWYi8VnN8rtxx1HlcktJrrAh1vlvcifYoth6
         kiWA==
X-Forwarded-Encrypted: i=1; AJvYcCV+vq7Ay6kOTZqDVR0qn6zSjRClTU+/GYY9u6VwSchFd8u8aL40c1s6CCz/FlBiwlHOJeR3qDoXt2pZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yxj/GZULtTXvZye1TNLb26jBZBXehnFStY9PVBMrA/2IGFOEm15
	L22cKx+cjw01VdA1KZuNrFibaE7+YpLD/fUj4IlSV9vomgXNxVoRccouQroIIcYaWI32r8+8dA8
	8tSjkdA5s3WIOAF8l6jo12dontl3DH11EgtRV5JAMF2lS2Sm/7u1fgPOMSOcEUvPn
X-Gm-Gg: ATEYQzx5orMOV9tJ+LcMbeD2k8OdP7azoDy5y/j3uisGr4SJZZ4PhJ6FJcBhAN9IbQl
	v1tqg3XAoFE9YAIDRJNBGTkraQQ9jGF1YXN+2mSdzipMPEpJ6tJETIBoaGJsaZFUZ4eeNz5sLdT
	eGR4SV1/0s1qQ4tLzbJ04QLZRicICSKWMJ7INLQys/bfFrhl5PvmyCMb52o9C/jMZ00iObeuReK
	eMkwRViGMhmIeQMzeNHJHm67yLCCh7Sg5+lVr+q1mEt8EhaatD7tuIyQFT51l06OhPn35/ARmIp
	A3MCJje91UkPYxEPj1Rxn0vGanLpuoJpBJAIgXPq1EdlZMqkVngeDL+sav3y1SVW5eJWZl4CYtj
	eEKz0xflW3c4KDucayPnVeH1L6cDTSA==
X-Received: by 2002:a05:620a:1726:b0:8c6:6e2b:ac1a with SMTP id af79cd13be357-8cbc8da9b59mr1456806685a.28.1772458180378;
        Mon, 02 Mar 2026 05:29:40 -0800 (PST)
X-Received: by 2002:a05:620a:1726:b0:8c6:6e2b:ac1a with SMTP id af79cd13be357-8cbc8da9b59mr1456803185a.28.1772458179801;
        Mon, 02 Mar 2026 05:29:39 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfcbf894sm133471575e9.16.2026.03.02.05.29.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 05:29:38 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Mon, 02 Mar 2026 15:29:31 +0200
Subject: [PATCH v4 1/2] dt-bindings: power: qcom,rpmpd: document the Eliza
 RPMh Power Domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260302-eliza-pmdomain-v4-1-e61ae2bac805@oss.qualcomm.com>
References: <20260302-eliza-pmdomain-v4-0-e61ae2bac805@oss.qualcomm.com>
In-Reply-To: <20260302-eliza-pmdomain-v4-0-e61ae2bac805@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=911;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=JmCKMSZ99k52JgM1yUT7vCu4cn9pkfemr21UsbLLGFI=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBppZC9AT5GnA4Nd/35cSuUnJ3T2ec9pOi1VY22O
 YWdHuDOJ/aJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaaWQvQAKCRAbX0TJAJUV
 VkSoD/0VxuOcwFwEtvVSDqc1G+KC9QGeQ9EOKm6+2KUNQUKrwJv5E+ik3kCoxfg3PAZ3e7PCmPs
 8E2eupeazvTYZMKcOu2t7Q3adQNuy5O0dnr31c0fanOwBikr5UJwztNDh+ju404BnAvEPCJWd2W
 1iRl3GuenoSgGikCY5iseu7SXLrSkgcph/UxV1fQEGJzCLLNfdP2VulW09KfMO5FfI4mga9EtYt
 GoWAJlo+T6BcuYGuT0kgZKGLNOd+1H2neP6VTXEIDmVnD8w0I7rDiysJfC+gmY57sOqP5zp7v8l
 tgx5k5Sh3+UCiFuWsSE5MuaVu8kWy/SI8LANO9nbtX2sLYpzCwUgmiVrOGiUCEDyatoKFZFRZqO
 XCqxD5Vot9qSYFqMW4VgzAvM8Y0ilZhaXUYFt0Xp3KY3kpEeDxSv7wcPSg2Rbbbv4U/ZtbzzIPc
 ujBiH6Iihz5ITTvfrxdHDrXvTpMNp+4cqohQQAB1DwxJgMKE24k/saucUiCF/VnGAbYUp90hmtP
 5KT84JJfvWy155jJf5lGwLg2NYUO82lwG4ygLo46MJeJnLBdowTWajQFPVm4uqMlHqeHZz3Z0UJ
 LUMNGO6Q6YgQHMeyd5eE2ASGPdfEiF2kbkiDXWDGjJp3yPmTTOJkwsW/2HPa8ijS3Dgh8IvS5om
 e7jmeY4SwXLSk2Q==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Authority-Analysis: v=2.4 cv=GMMF0+NK c=1 sm=1 tr=0 ts=69a590c5 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=-qkovbBEdaU6HcigwZ0A:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAyMDExMyBTYWx0ZWRfX4nmPvkWN34C4
 fPAm5HPH6rfcZQublCPGojPalA2VrAe1cXi38datJw4l5+NkK2aZDz9jMJ+DMfneB7qBpzP/8kc
 BSkBn9mmv2Df/iC9MvzT0RScMjSRh4uU1wstAUgiCt8Wz88K/fViNyTYgTMklP+QHgORDxSlpjy
 aNm2DmdHWiC3Oc8fPsYRgxoI+O3cQW9V372WgPugorVNLZlWdBBVxveQ/ue8qsBReU8ksfcU7Mx
 XIeZv4+ik1VTnB2KZ4puQE2+tLfZuJoiAyQxgcFYd6NNz75o5j2ylNMdSbJV6EF3F4HVyxheP8Z
 8yGMCD/JGwZFUIgQIQ+6IsBa3sanqsq5lY+7EIhSyom2EeuEyMC4MXLm102bX90Zl5fFs3NpExF
 Exggt0kJtu+pPiPqql+vIAr/iJAtbWFR2quNv92oKw8R0HaMUgZKAjgbmbVNWRbkouF1Jiryyrq
 GTmaCNSLRBzUVCdQ6Zg==
X-Proofpoint-GUID: IF8bLsarOubsc_EIvZLlQXN0UhVgn2d7
X-Proofpoint-ORIG-GUID: IF8bLsarOubsc_EIvZLlQXN0UhVgn2d7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_03,2026-02-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 lowpriorityscore=0 spamscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 phishscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603020113
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270018-lists,devicetree=lfdr.de];
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
X-Rspamd-Queue-Id: 00D4C1D9D42
X-Rspamd-Action: no action

Document the RPMh Power Domains on the Eliza Platform. It is not
compatible with any of the previous platforms, so dedicated compatible
string is needed.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/power/qcom,rpmpd.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml b/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
index 27af5b8aa134..8174ceeab572 100644
--- a/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
+++ b/Documentation/devicetree/bindings/power/qcom,rpmpd.yaml
@@ -17,6 +17,7 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - qcom,eliza-rpmhpd
           - qcom,glymur-rpmhpd
           - qcom,kaanapali-rpmhpd
           - qcom,mdm9607-rpmpd

-- 
2.48.1


