Return-Path: <devicetree+bounces-230197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 340D4C0059B
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 11:52:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 39519188775A
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 09:53:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0410730ACED;
	Thu, 23 Oct 2025 09:52:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e5FNKPF0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7519230AACD
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 09:52:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761213165; cv=none; b=IjEWafsEPMcMNrteWaf1LH6dBt3DdhfIudUL/R6nVcWd1vTHQTYHDQmA+A4syaTAoJVr+k/tXeF3yYsJOdC4h6ITMbRaQdASRueanKUKTRy7xYnFF6YNGBJQ3jNx+LYmbem/pJePFzZPDvQAwOBsy2LPgtRg6Y5MbYbaBZicdAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761213165; c=relaxed/simple;
	bh=VzrZOgYn8CZVzBcsfs2UqdIG8pkiX7gsZ+Rc7+O5leQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XZvAaCY3CnfXklLvtPc5mdozADqwUx6LSj3ZavNvkmwypMj8Fm61bHU3n7yk5eUc+V8o3/P3W62lChpo2ep3subCPoVsOImSjflN7cMmp81npOfCQahfrIloK9eFGQOS5tfzlFtBXNouS+MnZSVtbTj10z4KVT9pjpFkH+N2gYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e5FNKPF0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59N6kth3015109
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 09:52:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lj4HGsR9qRam1xu/E/CQi8Qt
	OyeipH/qWlPK+yXMX3s=; b=e5FNKPF0Zf0SW+bOQun0ZKKrCe4aazHrrBYYJtZr
	CcQvJguaZm0s6DGPnNakYReyeqfAuv4cBK2SfjdMxZBF0TE8KdhPWtlX1tnGo+j/
	BWFz035c9Y/jdFQNMeyhu0LVKI/NSAQ1R0P3FbrjuX/HJoipzNRDzsOQ4zB6qp/C
	5jd7BVk53ENCamvpoqM3kjiXDnfna0NC53B66StBK+1GwJPbqHfpY4yiIi/EgEtP
	s3MU2YhUzV1yWcuiO4c6CWgqrRfKTBTTu+uMo5MmuNZS4hkqlVnI5DJf1UFcW5wm
	vPpCj04lc/8VxEWLEeWRec+E+xF2eyD/1UntRiHwStNZYA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49xhe0nu52-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 09:52:43 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-7916b05b94bso22614796d6.0
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 02:52:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761213162; x=1761817962;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lj4HGsR9qRam1xu/E/CQi8QtOyeipH/qWlPK+yXMX3s=;
        b=YFHn/eY0TW8g/FCr6MWXzFR1JdTMzLjC0Xt4f3Bt2hdyypzidjWLKII5NH71vJZnpD
         sFSntAQ5xyza8k1glNFkwmmv7+wK7/jKIosIwQCIF2tL03oCx1q6XRiQ7qMKIHCLoEzB
         hfgtjRFrERU8pgf1tOq2QED+DGRbV0TyygWX0OxZe0M3qcu/iST9E7k04X+l3SdBuH+1
         yOObC5Qb97B5sjknF/IbY7Q6J/0wZPrs4koCELsU1fZsddshsG53dkDWBtd9z5gsq2E1
         35cs89TmrKLX9tMo8QxlHlbxqJo/tYxaP01lWTtTYVryPrA9D5lD7zZa2ZjUgJZFxYrY
         joOw==
X-Forwarded-Encrypted: i=1; AJvYcCWaxxCbGVflTh15pXWOqKehTykAfpPiZex3k77ldFVCbHSzkYaeNED1g169uPk0Eo+XYTtMZJaXjZJ4@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6UBhghZIFmN/YpbS2PdcJPjKJCfmK5zE7mfQuBP+eUiECYvjx
	hCdaehUVtm/eikEvAva+7qmrHJQYzBFG4nG7QD7wDffKyxfH0kBe9wJ1Q3AieViMQ19ABfErMyV
	GkaYoFDI2TTXZxAJnCQSrWFgMOkFELGCFDAsldSGfyWX2zsMyGcqGeN/qMTKjLm8y
X-Gm-Gg: ASbGncvJ1yccyjCFC/gyoM+ucZgnb4N3xg5cy7jUj36GRoGpZkJlGfCtLkN9shes+LP
	HnFYg+uGKstbBfjej/Pi09QlIHl4nKpinKLyWVr9WyZAM7kU7TtWgGmuMfJPlIa4AFNHIYxlHzy
	DKjG5buS3fwywZmU2830MYuBmBmcMuwicv5CXlQTN4kSpK23b5qYkad2tN1XzqMsjtOCdsHQgd2
	3BynQWZA+FFz9ygOjL5XA8DzjlXyG0WMw29rmmVRUqHk2Zzh0TdZRU6B8gKMuriuzIHkzqyCz84
	+/eMs2eFSHUAT/234oh0HR4GAhJBXB/DDb1O+FWDBjKOHJVuwzft+nGp8gsi+GNzvpUNOGStZtS
	esRmVuHQG2BlhzOFWaFMZbtKbxAkaTjMAjBcwi7Jscta6N/+CGuJVRPqCZCNQ
X-Received: by 2002:a05:6214:2406:b0:87d:e77e:4df1 with SMTP id 6a1803df08f44-87de77e4e55mr114575326d6.60.1761213162136;
        Thu, 23 Oct 2025 02:52:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH7AbIcMz4qaa9yIcpZvpwREt3p4UM9idjvFlz0HEChINWcK7/GEpAuVvvqWLIzfePwg8PadQ==
X-Received: by 2002:a05:6214:2406:b0:87d:e77e:4df1 with SMTP id 6a1803df08f44-87de77e4e55mr114574926d6.60.1761213161613;
        Thu, 23 Oct 2025 02:52:41 -0700 (PDT)
Received: from yuanjiey.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-87f9de7beafsm12276226d6.14.2025.10.23.02.52.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 02:52:41 -0700 (PDT)
Date: Thu, 23 Oct 2025 17:52:29 +0800
From: yuanjiey <yuanjie.yang@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: "Rob Herring (Arm)" <robh@kernel.org>, dri-devel@lists.freedesktop.org,
        mripard@kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, marijn.suijten@somainline.org,
        abhinav.kumar@linux.dev, simona@ffwll.ch, devicetree@vger.kernel.org,
        tingwei.zhang@oss.qualcomm.com, krzk+dt@kernel.org,
        freedreno@lists.freedesktop.org, neil.armstrong@linaro.org,
        quic_mkrishn@quicinc.com, linux-arm-msm@vger.kernel.org,
        lumag@kernel.org, airlied@gmail.com, sean@poorly.run,
        maarten.lankhorst@linux.intel.com, tzimmermann@suse.de,
        jonathan@marek.ca, robin.clark@oss.qualcomm.com,
        quic_khsieh@quicinc.com, conor+dt@kernel.org,
        yongxing.mou@oss.qualcomm.com
Subject: Re: [PATCH 12/12] dt-bindings: display/msm: qcom,kaanapali-mdss: Add
 Kaanapali
Message-ID: <aPn63QSJL52HmhGZ@yuanjiey.ap.qualcomm.com>
References: <20251023075401.1148-1-yuanjie.yang@oss.qualcomm.com>
 <20251023081736.1251-1-yuanjie.yang@oss.qualcomm.com>
 <176121209123.1694835.2815069098750745260.robh@kernel.org>
 <10999a80-df1a-45c5-ba1e-e64b2afeeb4f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <10999a80-df1a-45c5-ba1e-e64b2afeeb4f@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIxMDE2NyBTYWx0ZWRfX8H0QPRm1xB7T
 B8iMb8hM08k5yESjp5pZwlszh802DHmgck9OZb4P4G+QZ3pKKkAwoWxv4zjjPPyFY7Bn4UE840W
 NOKy+pf0sitL81ej7p9IvQmA6+/sK9ctaVf+HcoMb1k9/WdgAbCnvmMjNlVD8xJ8jLhpoeLW3qW
 8vUzV2jjc9Bv3PgsFkNnuLCbi5ZEUGeHYwpXiTZY9kB4+DhP7NUzEwxSxV4iRclgt3+fpoXZNRi
 Vml4q9KLeQu9mcLLcB9Ef7kEBhtDpfeYp4bP8cRcJge+7glHFgZmDgk/s/oK5J0UBsSX2FT3Qeh
 1CObxHIpK1XkLgvZVGl/FhXjeZOsh+Q7ZJRgLcc13ZkcFFZtITLSwaX/XnwJNfSIfdOOF6CSzHI
 caF5dGq8gU0j6HvrHZgE0a746MXHcw==
X-Proofpoint-ORIG-GUID: bL2-E8cqrEINeIOOz3EqXaJyE_15hbWv
X-Authority-Analysis: v=2.4 cv=WYUBqkhX c=1 sm=1 tr=0 ts=68f9faeb cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=kj9zAlcOel0A:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=i8jsQQnW1KsEJaHduVgA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: bL2-E8cqrEINeIOOz3EqXaJyE_15hbWv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 bulkscore=0 impostorscore=0 spamscore=0
 priorityscore=1501 clxscore=1015 malwarescore=0 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510210167

On Thu, Oct 23, 2025 at 11:36:42AM +0200, Konrad Dybcio wrote:
> On 10/23/25 11:34 AM, Rob Herring (Arm) wrote:
> > 
> > On Thu, 23 Oct 2025 16:17:36 +0800, yuanjie yang wrote:
> >> From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> >>
> >> Add MDSS/MDP display subsystem for Qualcomm Kaanapali.
> >>
> >> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> >> Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> >> ---
> >>  .../display/msm/qcom,kaanapali-mdss.yaml      | 298 ++++++++++++++++++
> >>  1 file changed, 298 insertions(+)
> >>  create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,kaanapali-mdss.yaml
> >>
> > 
> > My bot found errors running 'make dt_binding_check' on your patch:
> > 
> > yamllint warnings/errors:
> > 
> > dtschema/dtc warnings/errors:
> > Documentation/devicetree/bindings/display/msm/qcom,kaanapali-mdss.example.dts:26:18: fatal error: dt-bindings/interconnect/qcom,kaanapali-rpmh.h: No such file or directory
> >    26 |         #include <dt-bindings/interconnect/qcom,kaanapali-rpmh.h>
> 
> Please do what you did with the other clocks and simply refer to it
> as some vague &rpmhcc_xo_clk which doesn't actually need to be defined

Thanks for your tips, let me check and fix it.

Thanks,
Yuanjie
 

> Konrad

