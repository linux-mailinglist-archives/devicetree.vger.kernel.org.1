Return-Path: <devicetree+bounces-246901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 885E8CC14B1
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 08:24:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 98BAD3081D43
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 07:21:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78AA033A023;
	Tue, 16 Dec 2025 07:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ohs9IdXq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="X0wwQBik"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7E9033A708
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 07:14:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765869294; cv=none; b=SkmA+blvDv5CXFAuu6YhTSJ8TwXtzKz+IRYJas4gKq6J0gyqN9RUn4dw5fbVRwTKzko97WwM7495mt6CUBbop1KJlWBSQFRMA6/rPmh+DutCicIfQcn0QLAy0JXWjsvS9BfDK3MjkLHY8VcfP21p33WOlC4nXuyg6wrTOLffP8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765869294; c=relaxed/simple;
	bh=m/5Gss7GrBqANXW/b4jIDW3eIyq31dv73Wuja8//6WI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VkkAIj2MPOj+tbW34FpXw2SZ4L8sO59urGznkzqXtG9DjKeNmsYqDZg2HM4yjCyiYWPwFKnhLZsy5O7ye96VY+LDIHkDbD7mFdPUJFF2P+CjAQc+LsPd/niqUpJD4Fcfdw+5gq+bjk2J5weuy9O6Op1rOcYbXYxd6mxBnhmNp7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ohs9IdXq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=X0wwQBik; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BG20r9n1131670
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 07:14:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Am0uuG/SMaWGn5BG7PqsVygZOCHB1Fc3JGgHjjK0254=; b=ohs9IdXqsQ7uFp7R
	5cgS6Qs3b2tYXCPCmtLqZ62d2MTEeeX/hjz0Af420poHabXs9qRnAcMJqHJzSpwm
	F7/B57jfmAevd6ChvNCjGMSbJwS7vse6eSO4q2PPuT/KWF+fQaIko6Fxau5rY3EW
	dz9tlnJm/eTzZMzQhjRJU2pG4x8z4N6akHPqJaaFDDy4gHH/j9d3xQArUTTq9EP9
	G+kBwZKhpMTIuegC+WN9Uv4OHgrcx4n/pWfMprzW2yZdkC+gHUSQVYNGNI/HpKsx
	myZsRD4bJ5uWbfOx+6QIihlDhmwgmwVevJNoprVG2NG5hiunxbX4VVwKMsK56yhh
	oW2KZw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b2p3uart3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 07:14:50 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-88a316ddbacso51292586d6.2
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 23:14:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765869290; x=1766474090; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Am0uuG/SMaWGn5BG7PqsVygZOCHB1Fc3JGgHjjK0254=;
        b=X0wwQBikv4kGNAc6sUMT/0GwlqvIfZ8siDTSZYWFAJgIN2aDp5iskckbxHmnWpazCK
         asC8A+/g/qpCHTTYDobj/vKVsHC5B5yceY4Eibajy5es6uUcBn/E/toorhVAnsc0W9CO
         MDSZCGsUiw2zT/u5W7ENQwa0buUaYOZcI9lbN+g+xWYipPLv14F5QmEvFBPUktdirBCa
         oSzWYBtyXc5r88vXOP+NZq+8PtBnnuvbLr1CZ34AHL2/ghMsj3TRYlEeNRD+EWSWQvhn
         jhO9LGpNd3KUWMa6VCqe9FrX16UB9ImPVyeShNXrWSnNN8ff8xRl9AZ9H0YkJ/M3yY3C
         citg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765869290; x=1766474090;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Am0uuG/SMaWGn5BG7PqsVygZOCHB1Fc3JGgHjjK0254=;
        b=Oa+nkzIzAoq/IYNnpooswzIrTmZGhn7mUrz36X1YB7kokjgAhFAl8SOKMsZiLbY79U
         uzaDFRALjFZj9RL0PWEH7vWvoz6fFjSz8NT+mCPFGwXF/xK7XCFZpOcoCnM7nwIhJ7vv
         evBb79NyJWV+tJbbbgBN1GINcUZppOrL2gjFzUcVgLnW8fnQHpAiuNkiBsYsAYmYyCfV
         qkBxJtnSCsNfLy+6SB/pL5XBZ72vGJHilK/liojmg7EliNmk4EM4LZjcg9nFyQxXoWY8
         oda3z+XfvUBf80MbzEYrNijRvjzUVJGU6uR94KXlv2KEN7psjhyrOpW0sRlvTYTg0zqq
         ZPtg==
X-Forwarded-Encrypted: i=1; AJvYcCXcrjl8eLcBaYkr9aokI4s1rtdjtaNiaDmF2xQ8U7BUe7619llWyoVtsyaZasywPSZfXJuKzp2FLSI0@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2OFDmCuVnIlIA60Wn0lNkyUGifQeu6EOC5s15eZpcjT9Jf1YP
	W7ViqXBdPyHFbgZxmeu+Ye927QUMUOT5ED7oCFduYhksioMEAWAFBOLfVgtxeRo+OlpvuJp5sUn
	uMvK4PBz4izJGIDAin4pxORiuODVl9g5cHQAGPR1s45sWRf8cJpS9+NlBLsQ05cVR
X-Gm-Gg: AY/fxX5BhfTMhQB2aiamLK1RAVGp9N9Ybz17Bcaon+5xazpMKJhGM8UnYKOjGPkIW9n
	4NMzr0QJMHdsifFxBY1y7GBGPK8mYvhUV/oU3t7e146uZnF4QrPh25m5fqNZBGdqLYJrBi6nUGz
	rAnaYVBMHDHv/UULypmN5YeUCpCXuuHhu0Fu9X61ZDY/jemBD56x3AXLDpypCSZaQ29UjLfegCN
	ivSw2gPiM7SDMT6zg6awdem/EU28Bcp0PzHPgu2oNyGJ5cQj6zbJqk18vbB8P+ZErbyojaSxJwp
	KxnTVWwoi6eAU3NYFY1h81PugqI8rqcsMI0MGNYFfLRkROo6RBJQEvctMye/Y0sk+KPq5ahKr4I
	Ci/IFjAEDh54hIB5KKtZ7lcMV2mY38EXeXLknefLyIe+3hGQnKPt7Ft/+2eoEn8Ch2DmVjCc=
X-Received: by 2002:a05:6214:2e45:b0:882:7571:c012 with SMTP id 6a1803df08f44-888801cba45mr175118256d6.55.1765869289747;
        Mon, 15 Dec 2025 23:14:49 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE2lJX1RHdL61KthpwkRgPaivxdvAcRF1rHNtkwmJXCWmk9l44q+8qM2lkJENhb3atu86mA7Q==
X-Received: by 2002:a05:6214:2e45:b0:882:7571:c012 with SMTP id 6a1803df08f44-888801cba45mr175117936d6.55.1765869289243;
        Mon, 15 Dec 2025 23:14:49 -0800 (PST)
Received: from yuanjiey.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-889a860ce52sm67808286d6.50.2025.12.15.23.14.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 23:14:48 -0800 (PST)
Date: Tue, 16 Dec 2025 15:14:37 +0800
From: yuanjiey <yuanjie.yang@oss.qualcomm.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: yongxing.mou@oss.qualcomm.com, robin.clark@oss.qualcomm.com,
        tzimmermann@suse.de, dri-devel@lists.freedesktop.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        konrad.dybcio@oss.qualcomm.com, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, krzk+dt@kernel.org,
        neil.armstrong@linaro.org, jesszhan0024@gmail.com, airlied@gmail.com,
        maarten.lankhorst@linux.intel.com, linux-arm-msm@vger.kernel.org,
        lumag@kernel.org, simona@ffwll.ch, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, sean@poorly.run,
        marijn.suijten@somainline.org, abhinav.kumar@linux.dev,
        mripard@kernel.org
Subject: Re: [PATCH v3 04/11] dt-bindings: display/msm: qcom,kaanapali-mdss:
 Add Kaanapali
Message-ID: <aUEG3TL34CM2V5Z+@yuanjiey.ap.qualcomm.com>
References: <20251215083854.577-1-yuanjie.yang@oss.qualcomm.com>
 <20251215083854.577-5-yuanjie.yang@oss.qualcomm.com>
 <176579137354.1486530.823295322686100207.robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <176579137354.1486530.823295322686100207.robh@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE2MDA1OCBTYWx0ZWRfX92osRwxesoRe
 u4GexMIJJLww60D4GIy5Im/LkIo1vapAcENaRQZZRopweoFUpzCGlXH2vbT8mfQNV2CLAnYb4CW
 XQPnMwxQrDLliYFy2s5UYW5nw7f9IS4b2vUkbTE9re/RnB9q9aJnFJdPekJ+MP+3ls3hUP34DV2
 VUOdR7F3HlzsU4vejkLN4zsWzpr+JYsIzmdvdXT/Ow4HfCmpCKKAYGSprx3Jd5BqKpZJRqmdGUR
 wu75XZTWREjqPdsOvn9Y3XHH3NpYLHulhUPIeFnpG671NjczhKoR5qXiKaPFRSxIdNOWHfXnMC+
 IFbmf/XvBG+96Ale02W1lZDmtv0z4O7pRDsnzkd1YIIfM7+YfyV3/62suDehgzfmQQfjjz56YVM
 LwKp/rZnq4l3DlZnbVk3/A+31LWr/g==
X-Authority-Analysis: v=2.4 cv=Q/TfIo2a c=1 sm=1 tr=0 ts=694106ea cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=0awkmHLjsCMGZ7zvgVIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: VoHIv0w0mRF1VSzloUowir-PdHWQ7LkN
X-Proofpoint-ORIG-GUID: VoHIv0w0mRF1VSzloUowir-PdHWQ7LkN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_01,2025-12-15_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 spamscore=0 adultscore=0 suspectscore=0
 phishscore=0 priorityscore=1501 impostorscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512160058

On Mon, Dec 15, 2025 at 03:36:13AM -0600, Rob Herring (Arm) wrote:
> 
> On Mon, 15 Dec 2025 16:38:47 +0800, yuanjie yang wrote:
> > From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > 
> > Kaanapali introduces DPU 13.0.0 and DSI 2.10. Compared to SM8750,
> > Kaanapali has significant register changes, making it incompatible
> > with SM8750. So add MDSS/MDP display subsystem for Qualcomm Kaanapali.
> > 
> > Co-developed-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> > Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > ---
> >  .../display/msm/qcom,kaanapali-mdss.yaml      | 297 ++++++++++++++++++
> >  1 file changed, 297 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,kaanapali-mdss.yaml
> > 
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/display/msm/qcom,kaanapali-mdss.example.dtb: phy@9ac1000 (qcom,kaanapali-dsi-phy-3nm): reg: [[0, 162271232], [0, 460], [0, 162271744], [0, 128], [0, 162272512], [0, 1024]] is too long
> 	from schema $id: http://devicetree.org/schemas/display/msm/dsi-phy-7nm.yaml
> 
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.kernel.org/project/devicetree/patch/20251215083854.577-5-yuanjie.yang@oss.qualcomm.com
> 
> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade

pip3 install dtschema --upgrade

After update package, 
and use：  make dt_binding_check   I see the same issue.

but use single check:
make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/msm/qcom,kaanapali-mdss.yaml
I don't see any error/warning.

will fix it in next patch.

Thanks,
Yuanjie

> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.
> 

