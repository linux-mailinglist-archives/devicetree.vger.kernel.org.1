Return-Path: <devicetree+bounces-271029-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KKAVO8UsqGk2pQAAu9opvQ
	(envelope-from <devicetree+bounces-271029-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 13:59:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 925EC1FFF59
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 13:59:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 54084305ABCC
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 12:59:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CAD526B75B;
	Wed,  4 Mar 2026 12:59:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ArtWOjct";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DPfT6RVw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FC923ED60
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 12:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772629164; cv=none; b=dpTn9RXLR14aYeiVOjXsbMOeb5Gi+35tmFn7UdBFIIgUa6pV9hLFirDRyRdRid+EeIHWlXKeTmPCMH20Za0z2eJqjYG8+O8te9kWFUfVY1FIUlVhgN1396/6qiJNyrG6/Sn5sp8LTygAFsre9LaRucRVtB8E4P9ZLfUoSi6AOqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772629164; c=relaxed/simple;
	bh=dV4c9N+VPGpt+iF/Qhlf6YTdOXhS50ODX2RZxCnCTzs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TDP0aXS/rEcH074ofdV0f8/Ci2Rf9UKPo7XOWTr3QnQBtabFtmX952iyVAaHoXJjikPDAzCgM9YW3IOTIgRmKRGKkHLF166RlEl6SYbg1HbrTzn+CsQ0Ml/OVdR1azA00AjUmBNpXqKoii+9BfM5/Mruaz1mimJox6pBlmkm4ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ArtWOjct; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DPfT6RVw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6246DEK61203324
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 12:59:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	irP6RT3EqC1keUbn+JPZoRZk0Vj5ZSyp1qChfAmYbnI=; b=ArtWOjctLd3zpoQF
	QZk4ci+GMltgbG2G1OxVKQZGKZ6zBBADUGvGSYEDmWv7ZzFw0u7ZzUoMfI/MOAYY
	5AocZmYfz2gWtXsCF7WJfj/mpFpyZtm9l7EysK0iwJDmdHb3caUMXSISvsyr5EpW
	p0jeB6rOY5bQ4Pf8LUHQDT4ROHJ7V2tnkSNigpvWqVwSzubfAm4L6bdq0gZ+3acX
	1Ei6+QfhbLYP5/ovrOChJrUF3cN/j1Xb65XHGOdiDLm2iT7JHECU1qbNBrprYEKT
	+KBe/GgrUFprBQ57tfivFEvIUyN+0zzwC3hU91EhXd+Hotgy1DGgNUww30W3bFC8
	6r+z9w==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpf9c197w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 12:59:20 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-899bef1ea49so202587076d6.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 04:59:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772629159; x=1773233959; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=irP6RT3EqC1keUbn+JPZoRZk0Vj5ZSyp1qChfAmYbnI=;
        b=DPfT6RVw3qj9oJKaSM5wdLyBxuaaMbFrFQqw0nmFmUZ89cXN8iKSlyzfON3itllQoU
         C1RySZx8D3tcPgmB0lbg014hh59f85Res+8neJSngKf3PDiqh+6eQ98RZk6vyu+eeUzY
         LKVCf1E216ov5QJmpy93TLqH4kDs/QukQ6SSkOLG9sSv82UmpSb1/RTHbpAS98y7JdjT
         h2KX51BncrBYHsw7ny03FoeDXAi8Y+9+iaOh4tv6luDB8JeJrhMQHCTYMdbWQK8bqZLH
         nC8VOW3oUFdJy3UXhxqvA9KjNZmCbJUytfA8V2HRfHiuKNrGeYAjmEEn0skqG5rGf96/
         QqPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772629159; x=1773233959;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=irP6RT3EqC1keUbn+JPZoRZk0Vj5ZSyp1qChfAmYbnI=;
        b=MOv7nFeY9ykOKMPM5FFK+/5OdfeT0Xpf7iu6YTKLh1sNnCA28xje69/gbdhVtomg4g
         foYjD6Hvz8BUTN7bQ+NG6TsrCLUF5shuHQ0AYDijyLD3nxikT/iuXB9+MO04B9tgnnod
         iR1HZdrce4s181W4DyIjcOcziWK4NiZm4X7jVqABLo8CmIM1ApaWZeoMncLFH2OzNBBR
         FMED71P8LcmQcFOS5vDMxehzLCW4Yb1a6WvCLPvbF5D4H0Zf9sVmGEuq+FZjaXfIGVEx
         TXo/oO1EVqUdDKQCQxbtTVcklTt76652YiG3nWAUCTzCuhHkK4zwLUhFBk1+Gq8+jIiD
         8hug==
X-Forwarded-Encrypted: i=1; AJvYcCUkZqE04WW3v0GSRGzmwgmHzBMBVvzQbjlO0G3HroY/ZrkZjFoBOFRO6EHqU/pb1mDr9wTnyLD/EFCD@vger.kernel.org
X-Gm-Message-State: AOJu0YwsOzfjUKZ7A99AMaBFbbK5yy0NqLa+E5Ly0v0JIvwV/RVn/1SF
	VJ0rojFtpYDTw1/P8xB7/Vnbl6hYdtT2rF4wl3RzwPKQm5248xDpSkBzp5X26uviceuEHg3F0EP
	em+Xp52aNyelGIZaRK45K36YQ2Y5UOpKLXGAO1kOVAhWO+SarcPwdmlD0ElVdM5o3
X-Gm-Gg: ATEYQzz9/OuV9TmjLmc9lToGerBinBfhnoWretkUz+fV9jLBCGcXrndvLd5VgCkov4B
	ohqCygd9kFRjV8xOu/eShZdo24bnX8lJBTYSBEhxHSrywhFl7F/w8YhKiURCeUX2rpVDCsN/9IZ
	LrPGD4wy0+992DTQlUHqIAaenvuVm+Lt9J+SS4u0nCOZYR+j4HIU8WJXdx6RM7qKgRMgkjmCAft
	9SzOXouFjlneG6QcMK5/0Bh6RdW/n19GDBoy9pE5FKlhX3TmU+86eL9axKWpDxYlZL58lvRyhtR
	8ZOwizeoQqsHRWh2KZHLQpMFjVtMtfzbZM0UpcRPR+PV7qFXsv5ckm5ket5Qdtwxz+DYL90CRYY
	92YB+rNZLp6qYWG5ujViIkbNadmUGwq7I5OyQr+mzBULw
X-Received: by 2002:a05:620a:4481:b0:8ca:105a:298f with SMTP id af79cd13be357-8cd5afa6928mr194901185a.68.1772629159528;
        Wed, 04 Mar 2026 04:59:19 -0800 (PST)
X-Received: by 2002:a05:620a:4481:b0:8ca:105a:298f with SMTP id af79cd13be357-8cd5afa6928mr194896685a.68.1772629159102;
        Wed, 04 Mar 2026 04:59:19 -0800 (PST)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439c1fc577bsm11318491f8f.19.2026.03.04.04.59.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 04:59:18 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 04 Mar 2026 13:58:50 +0100
Subject: [PATCH v2 8/8] drm/msm/mdss: Add support for Eliza SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-drm-display-eliza-v2-8-ea0579f62358@oss.qualcomm.com>
References: <20260304-drm-display-eliza-v2-0-ea0579f62358@oss.qualcomm.com>
In-Reply-To: <20260304-drm-display-eliza-v2-0-ea0579f62358@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=910;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=dV4c9N+VPGpt+iF/Qhlf6YTdOXhS50ODX2RZxCnCTzs=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpqCyRX7UgpBwNq2kXan77oXCkwScsgZ7KubZiY
 FS7KYrlwRSJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaagskQAKCRDBN2bmhouD
 12yJD/0dDKJsXz0uhoNClfA+5NKCeO+laTmSJy6R2FEZzGF+7MWApUp6dg7f1hPq4PaIt7iaVeM
 F2oVUlpmJ/Cto+44b6iGuvCLrVFWoCRNIxUxVCEPgK1dn6Ppsm/wFEOQT3B7NT/tRzcE0kE6pyo
 8F6fGiWG1H1RvGwlgpe4nXWWDs7aIXjISwGqQS+Edyv6LrD4Um7PaKke1KwF4kZG4VH9cbkWBRn
 FTKJ9h1TaYC2un31Xu0zLWFVcVaBUlHuUHEfLhtiDLTFRbSbzlN+ypDwVNGewxwuCp6pLBmCsmp
 Z1fbrtutCarAnoudcxETCiP4HoKs9a0Emvo88KUizke1J3WvouVoOHVX23hmwbrBPnlUZQ9heMt
 CGBK2plkZ+GpE4ZfJ3fxSsgQjl9NHivbedd0Nut68OSA0IZmVLblqv6K8dQh4t+aYBwUjxEKWkx
 mQ/o41MxnwJG805qGDIoJxsOZTLcZllm5Ioj5msCgVNfehZBFrzL3nDsRc+VZ5hzXG2NZCQLrhS
 KnWFr1t/nXeAbmfF2KvEGxNX1A3/vdv3HrEyObXi6Z7Tx8H090WCCBIvB1X6c8s4hTPyOJoHHUB
 wnKkSGHw3rQiEUFRw7Jo485AfIx/wdfke7I3zeAtqgthrZig7nsy7tP+nqeCaQsHPHxlvGCYJBk
 nMnmGbFFKa7TJtA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDEwMyBTYWx0ZWRfX2zwvLXHG6xhh
 79/jFFx7vtyvu3SRbaC61N3aVhsdt2txLcAK9nYyXmB3g/6ofa3W2ZH1l9cXQen9NU8S/4myMES
 NB9VC4SxJTgq7xVOenZpZlmXpN5TYVwJ8S/+OoG7Sg524E34xpHaBzRYI7NHA78kCvS4GzYzJSg
 0RyLxOH37JY5MPLmj1c8pfFJxN7/nrgeqbnkZpuW7Rj7rR6GXga/uSHGbpgaHwgBXVLin+Cs0a+
 ThieDPW1xO6iOJCiAroN/16AAzWehzo+V0w69ugNFpmJox1X6ahECX/dBp44aARD5YHxFexZR8X
 GAnwwDcbH1PtPzPdK0slJ13Dt9zUsGdaf8pvHLwy249czU86XxpbZrWg1h3hLk/MSikUXLYqo4I
 SvyXpiJOfE431WJiPJr/wa/tpP6HfjRzjwWPo0TiPXGHogbRbtokSNgZgTfGAqMdo5rqKfMtpKO
 YoWxXsiMA8ozDVD5Fyw==
X-Proofpoint-GUID: ZTHQsA91-Z4gUOmWMN9FQ8QsG5eHdQRq
X-Authority-Analysis: v=2.4 cv=S4LUAYsP c=1 sm=1 tr=0 ts=69a82ca8 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=KosifQuNy-GW_fqSRSEA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: ZTHQsA91-Z4gUOmWMN9FQ8QsG5eHdQRq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_06,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 clxscore=1015 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040103
X-Rspamd-Queue-Id: 925EC1FFF59
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271029-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,ffwll.ch,linux.intel.com,suse.de,quicinc.com,marek.ca,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Add support for the Qualcomm Eliza SoC platform.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/msm_mdss.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
index 9047e8d9ee89..a86776425f26 100644
--- a/drivers/gpu/drm/msm/msm_mdss.c
+++ b/drivers/gpu/drm/msm/msm_mdss.c
@@ -560,6 +560,7 @@ static const struct msm_mdss_data data_153k6 = {
 
 static const struct of_device_id mdss_dt_match[] = {
 	{ .compatible = "qcom,mdss", .data = &data_153k6 },
+	{ .compatible = "qcom,eliza-mdss", .data = &data_57k },
 	{ .compatible = "qcom,glymur-mdss", .data = &data_57k },
 	{ .compatible = "qcom,kaanapali-mdss", .data = &data_57k },
 	{ .compatible = "qcom,msm8998-mdss", .data = &data_76k8 },

-- 
2.51.0


