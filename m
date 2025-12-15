Return-Path: <devicetree+bounces-246457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B177DCBD006
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 09:42:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AD8FC302FA31
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 08:40:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1CD5329E73;
	Mon, 15 Dec 2025 08:40:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e39neXgb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eBSuoKWf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3F6E31BC8C
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 08:40:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765788017; cv=none; b=PHLv3V8cRWTRRrsOXQbZ837rtvyfsC2WRMZ3/H1AbrgPb8UUniOANVHbhOV7zwvG/e7n9GlA6BicBaEW/eo6Q4hQWGaQtZDNqc26xjAXwceCZnjhQM9W203fh/1eLtYIXGqk7PdqifhohHeJllz25iw7/Tl61lGbhdclFa6Kp0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765788017; c=relaxed/simple;
	bh=JaD7mb6XfRdztIfNyhkMYYOnCv9vI/fjXzhflA1DBYc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=i681DVrpcZ9jxlnfIeuR3hXnwBQpzVVlVktEPe/pWthyURSe4eGQNCOrb8OoXREW78hMYtvgWpyarSdjIpB61kJT1ZdilZSNk/IT6xGkMq+93iFYrTVvtFAOXi2eAItqkkryO/ANc61AHiEqEcGQO8Vuscv4SHczYnMhwNrBEwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e39neXgb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eBSuoKWf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BF8O4nN2748675
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 08:40:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=OqlJLDbVw4T
	n78JJhjxStsJzAZqGZdEBuegjg/h0GSI=; b=e39neXgbZS2rDcxHUr4/HLOsedp
	sIzFQ/+TleNw6ZWsGQjK0ZVvJhE+3G3cDIUQx2U+5Onx1lWTp7eSpzjLHa+pRyW6
	Qv7jlWcmV3unqe5f7NS/+GJG4tsTHLfBmm6cOAMnNLRtdBoGlhiKhe3pi2uiL+f6
	sB7G6q50FVntmVe0x7K1fZbHH+hA07q2eNtPEhthhkoC3dZUc3Ervh0NXMVoCmi6
	TEBgpuHhzjU0C00i7wI1PgfRGzGm8+K5FcsMdoZJ1/iNRujpRJb1mMXD5UhITFNR
	9VoAvune1NlQKT9UZ/xXt1fMJRNYAO3IE+99Pii274o9q8m6xmy2W8CZDDw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b119aktfv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 08:40:12 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b286006ffaso861896685a.2
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 00:40:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765788012; x=1766392812; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OqlJLDbVw4Tn78JJhjxStsJzAZqGZdEBuegjg/h0GSI=;
        b=eBSuoKWfeN43G8ZhA5MoM4/ZqRMUkOG8HK96I4sStsz2UnUeaALnTI6YXtTd6Hn2Hi
         oIVoIiTXzZdGV0zPP9n7ne3H85rXx8x6bwhsGtXalTqCXgazEJ/c9pTFhluIwGcEJRkf
         xzMrfrFFYZXtrnauOaIaMc2Mw9TQnzu5u5kWjeP57hZPRd/XaW7PwU1aL+eEBRnUv9rI
         NtQ/hpBYtf4v4/sHOXZAjZ257l4QiF8sVO3pYTiO1rHflx6WnjnG38MHB3191bH5OVp3
         T8W3sgoqEauhyf9miwy/+lCUaKLVMV9SvZ1tD+p/j8ibpDGdl9eZg48NUupccVbAXUUp
         hZXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765788012; x=1766392812;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=OqlJLDbVw4Tn78JJhjxStsJzAZqGZdEBuegjg/h0GSI=;
        b=w9xuRPbLMDXNi61lUJo2vAVZqQB3YxoyuIb1mdA5t2tuV1ic4QneVakEzmZzvgxLH6
         SK7dZzmF7eO6Qx7O5GxnPUXtfBzs4dFZGoRf/Qg/5o+/TUq9Qq7EwoagZLMzJU2F0hff
         szL/n4avUFHqq0Ls1oZgKuGIT9+lSVnjgQYnxflTX4bxQVqJv1SLVpB0Km6f+JDZ0fL5
         evgIgAwtr6pTdls/8tCpJtaVksImre9CGfaF6U/ss6K+8sFx0Lkeoo+PZCih3yVnWoC4
         SGCsZaSqf4h5R6svry86Yyn9cGsH2h6TGao3NmGcAi9S8HBxS8GLlLDs+SpHd1qssj23
         ku7A==
X-Forwarded-Encrypted: i=1; AJvYcCUunW9PHrOdhAylogT7X0T78xO8btQUGQjAL+pCoKfEwDrYHSedeTZkJYBKuKd0ETGvlH/6S3zKYNal@vger.kernel.org
X-Gm-Message-State: AOJu0YxelwiYk22zUfZuhLRofIC0xQrHFRdixX3MX66YxnnSbhhwaPVY
	ust8aGVwFY/hvP9AFCW9MIH8M2x2mvHmWfBktcVmmcCN2heQu96lhhDkW9ZkIglcyv19gbnVn0K
	8q15lmxAf0zflTQD1FwcCCNFTM9kFZ8MLEk6at7vKivK0VJ7EJgREELsbNszUvbTP
X-Gm-Gg: AY/fxX486j9wnpup1LgtD0XrMvkvCv8sf6TjUOvU8LtVabPksRQQRtlQqSkoqTtES+R
	rcLLWfiXWK8cOd1uhInAzzzLQYM9jElXCoadsj/ur0KnB+7XrXahIS4Bog1FHJ74kowNkJl/DsZ
	PnUUJviw4KXxXRUToQkVPJLoN2W9hop3/vCyO8xU2jdNb+MCdP1VkQ6KeutSq5BNfJs5QCvJAs/
	SJLG9j9X63y4t1SnP9URJERcfs6y8N34IYkpfEnI/cpR9/Ez6XByt3XhCKd5igB3Jecr//9Ywap
	0S4WedHKPOS0kS9pJvRoP5np3UBdkAbI9YdjzkIuX5vCdKViiFK3zG+Dg6my7LtKu/YkSup95JV
	dqlcNvVVm5Wi+3N30w1vQrNbhBFkYCNVcBJsIUnVbHdIyB5q7pRF64zm8NvYnrp8KdyE=
X-Received: by 2002:ac8:6a0c:0:b0:4f1:df6f:6399 with SMTP id d75a77b69052e-4f1df6f6fa6mr64921191cf.14.1765788011985;
        Mon, 15 Dec 2025 00:40:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEjq6cUNKx8n0oIPZ+dTibjwjdoBvKbVns0jWdiwucSy+EN2FmAkVrey2CIl/19EhkHEWqZXA==
X-Received: by 2002:ac8:6a0c:0:b0:4f1:df6f:6399 with SMTP id d75a77b69052e-4f1df6f6fa6mr64921031cf.14.1765788011576;
        Mon, 15 Dec 2025 00:40:11 -0800 (PST)
Received: from yuanjiey.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f1bd6b50afsm90557971cf.21.2025.12.15.00.40.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 00:40:11 -0800 (PST)
From: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
To: robin.clark@oss.qualcomm.com, lumag@kernel.org, abhinav.kumar@linux.dev,
        jesszhan0024@gmail.com, sean@poorly.run, marijn.suijten@somainline.org,
        airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com,
        mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org,
        yongxing.mou@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com
Subject: [PATCH v3 03/11] dt-bindings: display/msm: dsi-controller-main: Add Kaanapali
Date: Mon, 15 Dec 2025 16:38:46 +0800
Message-Id: <20251215083854.577-4-yuanjie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251215083854.577-1-yuanjie.yang@oss.qualcomm.com>
References: <20251215083854.577-1-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE1MDA3MSBTYWx0ZWRfX5PKi9aklnM1w
 kksqy8iE/RGb3AA9rsxH7TuKCHv9qPjCaR1dWsqJmu+lJPInbzbxlG7NVtDlq5pGBJY0kmppS4m
 NMQWhkyU+TCBaG4k3xKsDdxQrXzcBaazxOVfH3E1lLksPUIneaX2ruLTrBG05+d1tI/Ax74kOPX
 s8MK30cmm3mtcGbm2FMZpmn0nqQyvpz8XMjZ8cMMIwCe5djIxJFSf2qPSm5j9BOpHuXh7eIEfhl
 zORdnc6o8nVRX7WYC8ldX9zz9Wk3lR6nwPpQOiZJ4dsmtdos+wyVmdLLGCAa8apb9GP7iLJOUDR
 bmzKpKhqf2WzOdw8G4TozrThU8Z6APveNlUuU0SBMuT10KG5kCKBpRIOiNSE7oyfu8I91tFjSTM
 0A4QMicYIbxYJQAxUGMTQUK81K0V5w==
X-Authority-Analysis: v=2.4 cv=LNFrgZW9 c=1 sm=1 tr=0 ts=693fc96c cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=NRHHWUy0EX9jfUzwrTwA:9 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: SVBTHkSww7KASrdhN-B7MmAa1zrRQlEW
X-Proofpoint-ORIG-GUID: SVBTHkSww7KASrdhN-B7MmAa1zrRQlEW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-15_01,2025-12-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 clxscore=1015 impostorscore=0
 phishscore=0 malwarescore=0 spamscore=0 priorityscore=1501 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512150071

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

The DSI registers on the Kaanapali platform differ from those on SM8750.
So add DSI for Kaanapali to compatible these changes.

Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
---
 .../devicetree/bindings/display/msm/dsi-controller-main.yaml    | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
index 4400d4cce072..536ebf331828 100644
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
@@ -369,6 +370,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,kaanapali-dsi-ctrl
               - qcom,sm8750-dsi-ctrl
     then:
       properties:
-- 
2.34.1


