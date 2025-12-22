Return-Path: <devicetree+bounces-248775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D63CD5998
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 11:32:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 191163021FB0
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 10:31:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51E62331A44;
	Mon, 22 Dec 2025 10:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Pi+/en7J";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CceqoYn5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D550232BF55
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:24:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766399084; cv=none; b=r8K2zG60kS8AQqeFS1qBDiqYBQKMT7P6moq7HmFZZLCBEjQWZW69lP6ar/ktC2/zN3aLKfKipfWvhO7w5BPCPJjFTeRvVDhT03vzA7byV9qYBbhIL4nfzJ50c/u5W+R6iBwrYIHdK8riUHeVbBTHVtPUf0JIlhssLZbdpKmvYBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766399084; c=relaxed/simple;
	bh=DFWgyPJMXnYq9tT2E5rWliTY17udrbfSo0iJAuFRiog=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=kpPrs3O+4oiIoHvMFYCaWox9bM1gK15q2eCFiEZba+9Ii1Uznn2w1klvJgKndH7knlPS341/2jt225rHbiOnU2kovKt2MavsRKK6rky7InOG4vdd0ad5t9qaJS5URfgfudzwDqvDhwhKMPOhxtOWJuNA6kX2A1Vi86VQ8Wkxje0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Pi+/en7J; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CceqoYn5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM7tvkx3732860
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:24:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=NRZ5PDF9RBE
	hUcKxfeiWyFu1TAhirkb+W51QleGLBP4=; b=Pi+/en7JmzqHEhtNNjN4BaO3fVI
	fe0veAIN+Mf3FEVvdd7rpOfCq/qVUbP3MdGY0b3Hyz3lqQ+ppELeEYScJ+N9Naem
	y8c035mmqrlzG0MO8q7aNze91Gdhl5USmnrENYJbtKMnGbzcXS7RvFJROYgIzLR5
	8+yKLZ/ddwBIaCjfaSTO7mkcCTqj1ol9UAozTCuJsGRsquJrTMjngJRHZ96udxwB
	zHk1GKiQk4xSBAi1EdPJtiwrugUI7V1sa7uFm//dFfkI0g5l8cyHmCpW19RI4JNr
	skhmE2l8ggVq4RLLJMCYQrXaBaYoWTwZm0FLU3rzz6/tmO4EBvTDdojdM/w==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mrtcnvk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 10:24:42 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4f1f42515ffso90335321cf.0
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 02:24:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766399081; x=1767003881; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NRZ5PDF9RBEhUcKxfeiWyFu1TAhirkb+W51QleGLBP4=;
        b=CceqoYn5fiG7mRCXw1WThtDJz3hqQjuOU/1BJ5fsnMnn9MeGS9ZFtgrZUoleHBDUhK
         C43XXzVVeBn8LbA7Swwj2O1WCkMLbyBZ4/QpeWfNQdvSL/Qq4bsEv3eMLnQVceQcxVU+
         NcZAGJ3Zs3wE3+Fjurki2bOViuGB3aZRQlYNWvtDhxpeO585iRNagtzrePGp6boCHFq8
         5y3cXMWkSPcjX6EGmSjmnzegp0rFzXacOZnQKEBclrXlrZHuL7ozwwq/OaFY2s+BR2Ps
         n70gPAnSuCi5BYPxsaSvcqWkGI7E+wwFPwaVrKLFob1kIlChUkKTUjh4qeJyzIZuzLkw
         IuRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766399081; x=1767003881;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NRZ5PDF9RBEhUcKxfeiWyFu1TAhirkb+W51QleGLBP4=;
        b=L08ZxD9jUhqQcaWKqsM11vfzPoh5cdVIawBl5VN3XF36l88CNufEvtKKkfiCDG7OEH
         bOjMZ5IhQlGIV3QLS+1QSiZ9dJj2Isk3fi0vYl+1zExsm4x2m/C7jOqFKISwzYiwQhFW
         SMDGRJjdhfkGBqPWkMm/eHudmz1Iz42/LT4rQmZFV+8NVG9Ocks6hOJyO3nEEdDvC8Hj
         yZ1/lfbboHjtBFchMZdVfabP63b6SJAzpBQiDnCtlL98IvXmifb9a0O/xYNJXFuDTNom
         rbyqK5FG5ioD/9HCPpYPQrZ64C5VwLDOgbJF1rTSlt0VxlIohD3DzK39AkmVOz8FOE4v
         Tt/A==
X-Forwarded-Encrypted: i=1; AJvYcCU0uvDHZ5/EZHW3B0rdOOXCJZ8ablB1npG2DW3yezi6m4Y2oBCXEPcw2Bf5kJzC3Ufnk25AlvgtG5Yv@vger.kernel.org
X-Gm-Message-State: AOJu0Yz86ewQVV9AR0VNdFF87G4vYLiv7zgGhMhxqFb/FGjpoVmUCARG
	CwtEAIW5ElmjJNB6gczOyf20NQSnhcxkdEywkO13s5OkhOaHD2jQylCAQ1siBB+FZjbiq7oeBTU
	wW4hJ5vNUskWbWxn0Hw/6k24sFBbX8AT49j8i+hQwlhX0j1WgUvX8/H8RAF9jn/m5
X-Gm-Gg: AY/fxX42TmlH0rm3GaqHQ/AfJXBlOjL+SNKfGly7ELJHSwD0zI2+jMtqfNkOw9eazPG
	JtPOELd98MrrhSwDn+ar2QruYtJvwW7s2P63h0l2/01OjX/HMqwNsae6pVNuNYyPlBUKo/FfEZ7
	MASZay6nxgsgpkiFxqoQcrw3kx1KWag8K0o+7NU3n/KnHG8nf3Pmta462ryr7UrWvp0oxt9Vy9J
	s03gYXGpqqLVNnRZCSNm9sitR5NUs/bu480IARP/zUSOSONM9aa4XRZp7B+3NTT01pkTJoAFj3b
	DU+Bfyvrwgh5z1zJjs55bcIwXip8AWItspgC67YEJIit41dykiBmRm0/BOfd1ZPMZNx5pUQPUZG
	J6sfiAMvdaPFfNXqBnhQhC3jC59CHM3/wdJJo4houEuyPxxChMl+0r/EE0r+B6MoigG0=
X-Received: by 2002:a05:622a:652:b0:4ed:b94c:774a with SMTP id d75a77b69052e-4f4abcd2a19mr170343691cf.5.1766399081238;
        Mon, 22 Dec 2025 02:24:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IElR4leQwKpUsE2f94dJm6zAV38uLrNz/vxGBS2C6iTgg7iedIsxM/lTMmm2L260FRmeEi26Q==
X-Received: by 2002:a05:622a:652:b0:4ed:b94c:774a with SMTP id d75a77b69052e-4f4abcd2a19mr170343561cf.5.1766399080783;
        Mon, 22 Dec 2025 02:24:40 -0800 (PST)
Received: from yuanjiey.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f4ac66a1aasm72500001cf.33.2025.12.22.02.24.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 02:24:40 -0800 (PST)
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
Subject: [PATCH v4 03/11] dt-bindings: display/msm: dsi-controller-main: Add Kaanapali
Date: Mon, 22 Dec 2025 18:23:52 +0800
Message-Id: <20251222102400.1109-4-yuanjie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251222102400.1109-1-yuanjie.yang@oss.qualcomm.com>
References: <20251222102400.1109-1-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: tS-VysLNM03f1JXhmT9kxTyhntWynI5a
X-Proofpoint-GUID: tS-VysLNM03f1JXhmT9kxTyhntWynI5a
X-Authority-Analysis: v=2.4 cv=CeEFJbrl c=1 sm=1 tr=0 ts=69491c6a cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=NRHHWUy0EX9jfUzwrTwA:9 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA5NCBTYWx0ZWRfX093sBZZBWztY
 z6yhsThRsiow4hm+5U6PoD6Ixb+ubxHESQnQYWPh08yiLx0ZOKFV/Fa5oH22Hy3+B+fqXDzvEy9
 nZ1DlPonVKZOQXoCs2SgbaeBgwMmjg+26XOTLT5CT3RnJ8AYHqN63KBsVEVwbN9mbYrsibXrZrf
 xPWgA56SwN2BblMpbmPb4p3938NZ5C3RXwsQwHIZHTHDYKvtzKx5AA2nDTqXPGk1R7DdQs+gcfO
 rd+83RNU2leKyhXDnbbZfW9vwT+33Di6jaTuvbXjJWUtt57+zp4FSE36lMa/nSY4MIJTlY1uYVv
 hhISCbB6ZdCirAHPgeQcmHDlvoJPzAutdfnN3NUDAzsT8+54tJqWaoQJvM1td92RxGu5xDOiQ3F
 rkMCb69bAfy91rCJhULNiDzhHb60AFq3CP2lwUzKvwCKHlgT8ySZmRy3slTIj2IMfknbE116scE
 7XKxSQXixhXF2LdFV1A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0
 bulkscore=0 adultscore=0 spamscore=0 clxscore=1015 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512220094

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

The DSI registers on the Kaanapali platform differ from those on SM8750.
So add DSI for Kaanapali to compatible these changes.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
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


