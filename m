Return-Path: <devicetree+bounces-255489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BBCC4D23AB1
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:45:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 23F9B30A27A3
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 09:29:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84AE435EDC9;
	Thu, 15 Jan 2026 09:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QcldLNJb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PqWbVObP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339A735E54D
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768469316; cv=none; b=kTnwVmYpXjQwy8tzPm9aLzDkY0X8G4D5RAUCo6arI1Za0Eq+ZZslgmcqDYPQT+l4gxkLS7ibovC5rMioCiqR4vjYCjf9IzTsxLsE6Ut2KTM1VmGHvh4VaRjujn1NSaHcxKYSnEU03Uh8c6zu1KZpH4EnGRoOj64Go49oK/4orF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768469316; c=relaxed/simple;
	bh=vBTkaY/Npgga42VfWKnIrCwOxlm4mmbuvmsSfmLrqoY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=OXimwimw2oKBvxvHNBWwtRXduWwRFfrC3GNnEoYzSYuB9diUqLdJ7wz4/tcv7kCYL77HprWIeTb3ZzZJV9jq/xwDEeFAsVVKCeBQabU9x9rBTNaEG/2ikDXMHy/tR+AaKBsBfYQpZHfoCqQMs12TglK9MLzqB56RPA+w9BBRCiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QcldLNJb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PqWbVObP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60F6fx3O1582105
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:28:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=QjeuQhZUGHp
	7ssTy1dZfeQV909lxdktwUy+qtwp8b3M=; b=QcldLNJbcA3x8cKa9SwsoFvAmIb
	DURT6NGVh0J9YV8wyLaVuXsRfbv+uB9UhvDd5Jyj2sGv2IwirIO9Ya74shLMuqOY
	vpHLGgfWmRj2AAI9o4yjk7Hi872OUy5WlgaXmagW3BdCRa3FY7O90Uf71kxUhknG
	ey9xI/HGBZOQRXpiIGOz5ni6yP8lRG84Y6EeMJeHr9FLi5CTbp33kBzOkwNr4SFp
	sSFp2yrhFFi1SgbQb40StWo/9ktDf+XUVdGKC8KEwCu+ZnsGCN+koRV2xuc5FIvB
	mChvRL+BXDoxA/gZCrYNy51TBhfDW1RbpaL7DlkSfCFE/14oEuXQNs3bu3w==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bpj1psya0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:28:34 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8823f4666abso18252686d6.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 01:28:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768469313; x=1769074113; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QjeuQhZUGHp7ssTy1dZfeQV909lxdktwUy+qtwp8b3M=;
        b=PqWbVObP2YS8YUu2lYeNA+p25Aqa0p647zJi2LkK0pL6emqJPG6JH/ct3CQMVAvGOg
         M8toqkdqFRIb9xS3ZpmKFhqR8793B3fIPx3yV9bGfHPka3w6wp1PAhtN3aDeT9h9SSJK
         sFliaW0Bn2njnBIqEXKd5eIHUjTQF+ckQBm0JJYvGNYTERThxAxN5ydmtYVwl7p6P85d
         QUU0+IsSTFAZpjh7X59A65un20LOuE87IQPLPOFBzIAGFO3Mejk+/N1syuTiXpDqnZPH
         MiqojzdXJDxS7l+ddyO/IWbxTii17X2RlqNeXmghsu0dWVKyacgrKi20op0sEWYlEqb4
         Gcbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768469313; x=1769074113;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QjeuQhZUGHp7ssTy1dZfeQV909lxdktwUy+qtwp8b3M=;
        b=u+Ajzf/dbjqb5sceJ0GL3ictBvmnfw/3P9Wg3EZVWlXSzKkXmHUev9JQSOOOkBnFmG
         y19vUo3z5HWqaGvMs1ghRSktsuQ/MKHpkkq/HHc8Wfw/k9nJY37nquBT3ilud4TZCoqZ
         eJENQOBc9yhkKI6K7T3YP8ZL1xt8MkXeI70TgRQ/PSDXgxdXvqEP8f5uF8+zIWsLnW2N
         QAlU78oUI7gFVD6CVbxOv+J8vR+aWP3RQOleUzLHXtggEz7GAnypu9ogzX7GdFcsPBPZ
         /Gyq/SpxmctsLy5objoqXg9Fmns4T9VQkF39ZhYyNLmyiAYYmt9FzPt3o6/z4uW0ilUO
         nmGA==
X-Forwarded-Encrypted: i=1; AJvYcCWAtC5Ee2D/aTdDbnRM+inNmHWlSvwtJgwBUnPJiRVdlWQjmjRvYqlOiJ/von42pbg0YQXU13qFeF55@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+hZAj1+CIlQfrzWqfI8w089b+fQjRxzdLXShAX+K9x5bxx4KO
	BjrSTtHjDsJa/645hWOq6CxAzX+ICPWwiX9XrmXjvzEmROIQ8tiQU7TK9acUkC+y99XHs6urLGW
	SMBjMz1k4ThxHTAs5IMgpyrSMNTrYW2fmVB3kOhwtLPelzH2nB4S0U7PjlSOZ/mHQ
X-Gm-Gg: AY/fxX5VU1GVRj7TWUwnCe5tWmNFu/A4EpAWcCHjAHbK5X7BgHDP0XTQPD+dlIgXo1l
	w+4fzF4oGhWIjn9VwpNVZ9xfnzPDTv3xfmXCRiv6fV4jCVx7lgcYeT7sBGv7m5QFqjOU28qDg+O
	eApQ6c9dpcqS829UXH3h5kYEqGx5zNSsIDcKpgmzixRXN2zSAD5uNk41UaP/zu1svy67PUMbYdp
	+7S7NH+E50m9dt1DPXNhxRIcHexsCLf1sZ9rwNTYhATRZAeEr6ue3lKxo5jvbjouaVDD1fQTt9m
	0ecHn5BNk4bQzoksZ22n5YlegIWlb8UTdYAtgdmclBXZysQ/oupvHKJi8wzMiE/NFqUv5YKDh2h
	VosQs5wnF4j2atKRSuYTSqekuTx2a7PwZkyxxoBawiPjOBDRYl3PD9jun/VXlW0qkqbc=
X-Received: by 2002:a05:6214:f62:b0:87d:fc3e:6d9b with SMTP id 6a1803df08f44-8927439bc0fmr83783056d6.42.1768469313343;
        Thu, 15 Jan 2026 01:28:33 -0800 (PST)
X-Received: by 2002:a05:6214:f62:b0:87d:fc3e:6d9b with SMTP id 6a1803df08f44-8927439bc0fmr83782616d6.42.1768469312829;
        Thu, 15 Jan 2026 01:28:32 -0800 (PST)
Received: from yuanjiey.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-892668a2419sm64388416d6.30.2026.01.15.01.28.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 01:28:32 -0800 (PST)
From: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
To: robin.clark@oss.qualcomm.com, lumag@kernel.org, jesszhan0024@gmail.com,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v6 03/12] dt-bindings: display/msm: dsi-controller-main: Add Kaanapali
Date: Thu, 15 Jan 2026 17:27:40 +0800
Message-Id: <20260115092749.533-4-yuanjie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260115092749.533-1-yuanjie.yang@oss.qualcomm.com>
References: <20260115092749.533-1-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA2NSBTYWx0ZWRfX0a3MhDt8hWBl
 2O+rhaColrK+TC4Y3qSsG/1dPf1/Z8Tsf3ML7TjzI2bu/JfW9gRCgqOFDwSRhRDUPXT9u3WLa08
 i+K8Gb/oVcSbTowtwvqYZgc/7FVNu6Lt+t3A4y+nWCMN39Rjk9sqhL6XVjlWCpWLzEQNJs3wGjf
 LpziyAXLdC+NdgjB5kOw/k040YVCw7HNspaGvKM1LT+25MHVcdg0VqsCXZYK2oZEec7yuIqTNqb
 4Kmm1S1a8g57em6cS+wGi12Jn7dlgZQ488GZ2WPmefeGcgDNC9gPQydfNBtowaNOmucgnWVAaAh
 RItI2CJzSC5835elpjSaPslEu6QhjD0lT+BRREvZHs49jhVPqqpdOG/QQYAoQ5LjqWU4MDYykcs
 DjvD9ILwU/mSc4BoLm+MqkgureSMCY3rZVP5Xi3Ynmrb2ocg72bJiqlIKNXNaIyGUMxsTksbYsF
 9m7VTh+bx/UitExB0Cw==
X-Authority-Analysis: v=2.4 cv=J+KnLQnS c=1 sm=1 tr=0 ts=6968b342 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=NRHHWUy0EX9jfUzwrTwA:9 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: WBb8aUrWH9JZQz1QMyBJXsSoPU_pxn4P
X-Proofpoint-ORIG-GUID: WBb8aUrWH9JZQz1QMyBJXsSoPU_pxn4P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_02,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 bulkscore=0 phishscore=0
 clxscore=1015 suspectscore=0 malwarescore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601150065

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

The DSI registers on the Kaanapali platform differ from those on SM8750.
So add DSI for Kaanapali to compatible these changes.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
---
 .../devicetree/bindings/display/msm/dsi-controller-main.yaml    | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
index 6276350e582f..eb6d38dabb08 100644
--- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
@@ -15,6 +15,7 @@ properties:
       - items:
           - enum:
               - qcom,apq8064-dsi-ctrl
+              - qcom,kaanapali-dsi-ctrl
               - qcom,msm8226-dsi-ctrl
               - qcom,msm8916-dsi-ctrl
               - qcom,msm8953-dsi-ctrl
@@ -374,6 +375,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,kaanapali-dsi-ctrl
               - qcom,sm8750-dsi-ctrl
     then:
       properties:
-- 
2.34.1


