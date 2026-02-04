Return-Path: <devicetree+bounces-262493-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4ER9MCq2gmnwYgMAu9opvQ
	(envelope-from <devicetree+bounces-262493-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 03:59:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 27807E115F
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 03:59:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CFD7730B9277
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 02:59:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AA272DB798;
	Wed,  4 Feb 2026 02:59:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SmRFepmt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bHLdGiJ5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6C862D7393
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 02:59:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770173949; cv=none; b=U6nuUIWVk6Ji1R9RidMV8/3y5axktV2MP014+wI1yV71n83h+1yRy9+uaVQoHLV5nVYiTuoRv5iAlZiU5JkskBx9OClcJb34KsSyLrCYbMLmlwZRHQrnRWwsbPhCRIBBpjrllfArJYt5AIzgUn9W6FjwKVsRHXEIeBbuYHFMQbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770173949; c=relaxed/simple;
	bh=MDUhv9kPW/KDT4F7QnvbtIkelI9+ZR22YQ76HoD+Hfs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nOv2g6jWKAyq1dsb5WaQl0rYaqwzYjw4l+W5D45sccIT/zl1ITkrk41YBDD8+GJKEU26GQloJV53ARB7AP6eDfOtHaQRlDVzf/FtDci18cBQHYNhzkWuY0G09pBh+9/fldG0iBdL1ByXGQUUFxYdMJutogb7/2dx6jZv7fMSxUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SmRFepmt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bHLdGiJ5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 613IljT32829219
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 02:59:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5La6/aWRLYj3GgrIklIllWJb
	pV2bq/VzjvPBl/F5s0E=; b=SmRFepmtmhPEjQU82HCChM21IAxQjxOFgbQ2uq00
	OQpmtkKzpeDqeNkTupqJr4CeiSFG5oIYqiy8fdskvQPRkKPWPm3CLPMPI8y4qbOb
	bixGSCOyM8jw/zqQH98mMVSbQETfoDGgXDk6Pa+8ehF34O45XHGDwf4909h34kMQ
	PtBzHMy/RthL85BRhpOyOY2nPJm+poM+ZugaMlFqOohcoZrC3wOgqtAi+H8UcHp+
	M38iUbuNqSjnQ2jUfQJiFLuvxSZfZ+jJYveWKHoVMNHQfMGNyspB2Zvp9SdRb1SL
	rq9CBzDRhDsSnFqA9twA4GQ2m49vRzzYWh+p1n7DeDuVbQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3ndvhmsk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 02:59:06 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c277fe676eso1923566485a.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 18:59:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770173946; x=1770778746; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5La6/aWRLYj3GgrIklIllWJbpV2bq/VzjvPBl/F5s0E=;
        b=bHLdGiJ5gDeArA5eohK0bYITSo52TgHJmbm2m4CBIEZ0Ekjyq/1YmOlK9+o3BYwVD5
         zOllIZ+P5U8yOpRLxQZm5cBzF7JZFbTnExiJie2pn27VPMwpcdbs+5XcnGJGR5kx6hnq
         s4gow/y8ahXTSxzhaX+5uEE+XiPbvkBEIRNMGZ79Tk12eDOv1Yt3epaFVf4zMvtg93cF
         U+/ttIJlLtkIJmTkDPqVjyONI5+TQf35NTKnyWMKlx/2xx399L4i09NStr38gSDSErUg
         A3E7mxZ6UwSozGFmsj1x9CONa+sH1a9NMOsclwEA4rtHoEdW1HTsh5fTYKTvLakgA0V8
         T5QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770173946; x=1770778746;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5La6/aWRLYj3GgrIklIllWJbpV2bq/VzjvPBl/F5s0E=;
        b=Q6bBHsmqpIPsSinsY4N2du3TojFpJIUg/OJeiqI/FoBn0XK2+ILlzOqWlFZ0HsW6bZ
         TK+7nh8EXR77ByRtmgbFWq5cbmD4j1hfw+BwyysnZO/alHe0syC/M8JTX1LPxT6aiD4F
         EtDRInu+LTEdRYq/QRrIZywRqKZ5fjOxIyve71G6FjJHOqVcggYF2auMSMsvK0agrgqY
         oyAvG8LyMhmHyrINwvUl+ITqdOcLoli615vVx24hipA1FSeCZKW1hixEHB9lDAwzktPC
         g4vcnJscuSIefvXVrM8YhNZrYuSehNpmPPhC9YwjpAAftekyGP8BDfEWkQ/5rFFl1c/k
         mFJQ==
X-Forwarded-Encrypted: i=1; AJvYcCUesCDnxQTQS/HdlEYDke/yJbVBOVnOCHajxSlNID9pHlD3Lwtvr8g3Qirj+YdOleWQ7gBGyYTaUIw9@vger.kernel.org
X-Gm-Message-State: AOJu0YzJzhyh5ErQ+GXEyLBqDD97NwhpGbOJAX5Zouh9HFdj2iaxBP5u
	DSc647VkvdPLvlNUYefOlQ2U2OYmYNC1+UOOYNJXHQrUrbleKzsqA/vfCA7Jl47tpULa1+X1hGO
	WtogZKTm9NQHlf1JLIR8UJNottdK8qKtnniZNT7ywItEDA6yE1fNGP7v2rqpXSjYj
X-Gm-Gg: AZuq6aJQxotAjDj6G/bXOPEpNUO67LnDHjMm0W6mqJshz76UZHMBshoZfBWkCw8KFcl
	+hrX5q4S0KShT12pzIYRBwz9R0AKrNcTuhIij/8K6hokCGdpPKr73yTs26piXjJ1qrtnzh9zmnp
	lti7i3Ll7B5yrGt2Vr96oskS2KOiBE42n86ltQoz+Et0zHCaIxvFaayaShfK8Tb9gWM2uDJaV4C
	e8IRQac4JKNdVET7GRkq82L3ReSXvLcxzbXfwUwDfGQp6/GGaVi/gN2IHmScX9jrA2WRbBgj4TL
	GGXArIC5xGvS7w03+Zq62lN71xGsIzRUWFXOqDRBNVBK6ltgXHbTJBHD1WpCEeAN7ynGD+bxf1L
	UbYZgzeOvARUiZ0/gCC54SQajl8Dmw4ROg/3cJypeBR0TSEW3BS3RH6VXC11LSlQsNypKsDlxwY
	BLSegQPXYOj3l+AOJQM28zEm4=
X-Received: by 2002:a05:620a:1914:b0:8c6:a213:8fe0 with SMTP id af79cd13be357-8ca2f849f34mr212284885a.23.1770173945897;
        Tue, 03 Feb 2026 18:59:05 -0800 (PST)
X-Received: by 2002:a05:620a:1914:b0:8c6:a213:8fe0 with SMTP id af79cd13be357-8ca2f849f34mr212282585a.23.1770173945477;
        Tue, 03 Feb 2026 18:59:05 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3869204003esm2227891fa.28.2026.02.03.18.59.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 18:59:03 -0800 (PST)
Date: Wed, 4 Feb 2026 04:59:00 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: qcs8300: Add clocks for QoS
 configuration
Message-ID: <daiw46t6nxxrmut7epilnu5cunhli5wgeqv2om6sfk4ejwfmmf@uucjs32ce3wk>
References: <20260127090116.1438780-1-odelu.kukatla@oss.qualcomm.com>
 <20260127090116.1438780-4-odelu.kukatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260127090116.1438780-4-odelu.kukatla@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDAxOCBTYWx0ZWRfXzg2p7G/KBkIg
 xc6YETtaoQQt776t6Q9zNLMQ2OQOlrM1SIpBHD/7b3neUTQzlVCbNiNVBxzUT8QYCftBK9ed7iK
 3T5o1NvF4gMCnLgbz51+KdP7JVQcMzyjiVLhCkYRMD1SBPzDw37kqN4f+japCi10kYimNyLsnAC
 hQ0XuNJ7pOudAo1wwv2KZ/YQc0HphRyBV4uvrP6hTt2P+r82FnDI8o/dayVxRXwI9l1C1V5Ogf2
 JJhKD5PholxGj4197l6/FPkwn44DOEHzEk6bZDYSV+OYbvuJd0XljcXiqrBiiUWXqii5a6hUBtO
 4yHJ/yEs+Z9F+fZ0qgLbc+d128rZPEGo5fgR892TI5I0v4PQwRzV9RgMA2EM6tQMd1aTXYaXYvq
 ptKWUOCs/GjtSXBQLmhNfWTH2hRlVDYzCqhhDX6nCel3j/liHu9qE7dGi8X0QB6V2t/u6daDA0J
 lKrhn+svmZZ3LN7NdKQ==
X-Proofpoint-ORIG-GUID: 1O5KE51HYxs6FuCcV_Lz5hG81b0XWAeb
X-Proofpoint-GUID: 1O5KE51HYxs6FuCcV_Lz5hG81b0XWAeb
X-Authority-Analysis: v=2.4 cv=b+W/I9Gx c=1 sm=1 tr=0 ts=6982b5fa cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=sc4ExDOf6ksMT09hswsA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_07,2026-02-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015 malwarescore=0
 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602040018
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262493-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 27807E115F
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 02:31:16PM +0530, Odelu Kukatla wrote:
> Add clocks which need to be enabled for configuring QoS on
> qcs8300 SoC.
> 
> Signed-off-by: Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/monaco.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

