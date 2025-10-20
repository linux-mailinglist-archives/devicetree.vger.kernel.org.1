Return-Path: <devicetree+bounces-228792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 780C6BF0BC6
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 13:08:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 59C864E3F36
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 11:08:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D5B32FB085;
	Mon, 20 Oct 2025 11:07:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Vupo0rDt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97B042F83CB
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:07:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760958463; cv=none; b=hPiUfDIqf1uumw+/0bN66nbPM2ChcgS/4hL40Pzmg+/TqwxnnNCd+rj90HKlwfsIExyLGJHiU5w13zBpFqHoWgOZbssa6AE8c+Ac/DfVWWGawXujpxTGmBKbbh+RBx+rvaOdcLeh1YGdoOkkQTIpM0Wt5vSfakcCVY8Rg/FmtCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760958463; c=relaxed/simple;
	bh=mlCsSNgILK5VjpE9TwK87gL9txtHrlmYePkScXEF5Bo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qJlsPOrRO4zg0DWN6Ac/cchavP52ZSDxlKDZMAG0aaCczOM9VOONjv4g5/+Qg5VFwwIIGOiL7IcIFe8p1kWbPI6qRXCyNgOAAHSqLNQrnEW7EbrNtnQ+P3gF7Qd+HWdeEjpRvlaeY0DQsSfXFE4a5jYv4nLBaEwIqZosypzUXK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Vupo0rDt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59JNESoR010739
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:07:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/3XkzzDE6pgtYDQvU/LrOrAk
	KN7CmI67gQk/krP8dF4=; b=Vupo0rDtbyDoiFdRGKzMaEGFKfc1VVYpV9RhBmPS
	Gfb7yYNwj4W5B3n1gmSPHGUvUiwwTKp6gyv6bspCvIOVp1v/4M2U2XLpLMw6kOyD
	bs4+qBuWetGShrObreU4js9zBzZQVBAK3pXnen0ixgasx1NcXn9GilhkGnXfInDO
	m3vhbsDtY4LiJvltorVDNJYBX+Uk08stgGohU474ZscwgOH49IW4vhcvBnwDlDFb
	YicVkdY7Y2rr4IbTx/FI5t2zlqTKTY7axzik95mhS3CaIp/cjxgxFyC6UErImv/f
	FIvjeZAqjXH1fykxj59SFrwGE3u4jTzSeYkbWQIIfr9vxw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v1w7vku8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:07:40 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-892637a3736so956775285a.1
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 04:07:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760958460; x=1761563260;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/3XkzzDE6pgtYDQvU/LrOrAkKN7CmI67gQk/krP8dF4=;
        b=bqxOXA5t6G06H55a1dIqStlWopxB6fNXgzRIY6qFWW/kkTe5QvAhXrItTl7s90JbOd
         NbvHOakab02bNracE1OCzsSsIe9/so3DqQmklmzstb98BEDTq04dfu/Pp7HEzi4e0r9V
         jVygjCwnYBsGnjLlHWCYls4tnVTug878W691JdOK0at+MklDALqsDgZW0A2UpUwraZFX
         8uyGtGBJuuAMD5BueIKjo6JAKbWCuAPbjPJxv/AlSCLlIZhfg3iBE+2SJRKLG4agauch
         I7l5rQkMc62cJIwgl3cvHLaJIUHW5wl8B3Ev0I3YULzcimq3s2oxQvxSYSUWx+A8LV+8
         hCVA==
X-Forwarded-Encrypted: i=1; AJvYcCVmHm470c56gxjDfFvhv6lKgGc8hXDViQUrIDhF93qgNFDepFaQOh6PknH0+Rufgyo7tBcfmspon8Jg@vger.kernel.org
X-Gm-Message-State: AOJu0YxqNi/LYCRtDliwUnb1Q9W0sF6UqrSdiRx1T5HbRIw/6YjJxELZ
	zIAlxeiTOaceJrSVpILgznZlh4yFsRqC9bJj4wdZLBvN62mkwV2nrsfABfH9+iFIvS6cKJcdtni
	fhU6aLSjmNT46rsyaluuVe+5t+b6NmwotzXJo1dGQr6WPrmP35l5R/NhCsoMiqEHf
X-Gm-Gg: ASbGncu8C1Aww4FQauqST/aBTDQYKTKc0zjHIbnhu4Fz50VAsoPaQGaRWWKP4Ce/j9Q
	h4ceXTwAq15iz8IbbKL9+Kvp+s6/8Gh9Hc3Gr2xfM2eb28EhJp+jLhb6KerrcNZgLn5Y6+ngDYv
	V7p01Ep6oOqVMOMVp0pQP1i26qJwak0aE8jJVUW7aIGF0mRNCrvddWHNVUVekfp+Tm6DeEzKpQr
	VZLerdf1TcLsbuLBSNcyxxC3PYAyA+nfgXWU+oq40P8X8i3PXz1eNGyTk/xmjEIfERH1aSGoSCt
	yBeuOAnVYFj/mod3SwebDta9rxOyCrIN3To6i/V878gycDJhioW8mtqhkkhhVZlefE0fyjmiyhl
	GGChvFsG4Jh7vWA6imtDIPPyRqKGnWQChMQiDBjMEKKZ+/iT85hHJ2FQb3yKH8DaYyXCgyu1CxL
	HaSUYJ5ToSkkc=
X-Received: by 2002:a05:622a:1812:b0:4e8:9402:a809 with SMTP id d75a77b69052e-4e89d263d69mr149386761cf.31.1760958459707;
        Mon, 20 Oct 2025 04:07:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEukabNO0W4DISkBvNcRhiWR3IUYfG3P7NB/i98qxN5u2LvB8QcV9XfUoEO0smvsXnJpaPJ+g==
X-Received: by 2002:a05:622a:1812:b0:4e8:9402:a809 with SMTP id d75a77b69052e-4e89d263d69mr149386231cf.31.1760958459184;
        Mon, 20 Oct 2025 04:07:39 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-591deec3856sm2410747e87.50.2025.10.20.04.07.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 04:07:38 -0700 (PDT)
Date: Mon, 20 Oct 2025 14:07:36 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: xiangxu.yin@oss.qualcomm.com, Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com
Subject: Re: [PATCH v4 1/3] dt-bindings: display/msm: Add SM6150 DisplayPort
 controller
Message-ID: <f4dihh4z2nnkjcpsrmopycm6opellvv4mkpee72xjbn26nw544@sfc4oy6c2xci>
References: <20251015-add-displayport-support-to-qcs615-devicetree-v4-0-aa2cb8470e9d@oss.qualcomm.com>
 <20251015-add-displayport-support-to-qcs615-devicetree-v4-1-aa2cb8470e9d@oss.qualcomm.com>
 <58446b2d-560f-4a7e-890a-78ae0bb92908@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <58446b2d-560f-4a7e-890a-78ae0bb92908@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxNSBTYWx0ZWRfXyPRYHpH43XMo
 Rz93wQ8KsNaUD1jBWy7w5qPfq6QRfhbdc8rGjIMwGyHk61adG9PJmeFV+Cxf4uoH5QilwTQAKUy
 NX+shOVl3+k3ZwbKgFdTDKva67OYqoqaBVPtpRHszfbe+MTO8QHVpLaLdIgMznKNMUpe61og8Yg
 s5K55QujL19DIF4WF9bBcU+UfBlrird77pKbvoi+DZIHMG/BIzct4KWgJBF6eRl9uxm+KUEAr3P
 Uf83/jnysiZIPZ3MkOwQmtRttitNyGrDLXhgU1v48VgYHxuRk0nheQz1+L8NTrVkDh9FUzk8Ufx
 /4YIB525p/gM6FYcfINYhCbpHRqWVYeNyjprRJK1jgSi7DeqGW7jbf07QSQWcdni8du7gJNDMO+
 QJ8CqCsICHY8aKoxNwKEyKXdARLVng==
X-Authority-Analysis: v=2.4 cv=bNUb4f+Z c=1 sm=1 tr=0 ts=68f617fc cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=3eJD8ZQ_GueHMKJvpIsA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: qnoXrnETgr6txFhrlaPqFRSZG2lXofW7
X-Proofpoint-ORIG-GUID: qnoXrnETgr6txFhrlaPqFRSZG2lXofW7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-20_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 adultscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180015

On Sun, Oct 19, 2025 at 07:13:32PM +0200, Krzysztof Kozlowski wrote:
> On 15/10/2025 03:53, Xiangxu Yin via B4 Relay wrote:
> > From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> > 
> > Describe the DisplayPort controller for Qualcomm SM6150 SoC.
> > 
> > Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> > ---
> >  .../devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml     | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml
> > index 9ac24f99d3ada1c197c9654dc9babebccae972ed..935eca23ce6b30b81b3ad778e5fcacc817a230c3 100644
> > --- a/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml
> > +++ b/Documentation/devicetree/bindings/display/msm/qcom,sm6150-mdss.yaml
> > @@ -51,6 +51,16 @@ patternProperties:
> >        compatible:
> >          const: qcom,sm6150-dpu
> >  
> > +  "^displayport-controller@[0-9a-f]+$":
> > +    type: object
> > +    additionalProperties: true
> > +    properties:
> > +      compatible:
> > +        items:
> > +          - const: qcom,sm6150-dp
> > +          - const: qcom,sm8150-dp
> 
> 6150 is compatible with 8150 or 8350? I have doubts.

SM6150 has the same DP controller as SM8150. SM8150 is compatible with
SM8350.

> 
> > +          - const: qcom,sm8350-dp
> > +
> >    "^dsi@[0-9a-f]+$":
> >      type: object
> >      additionalProperties: true
> > @@ -132,6 +142,7 @@ examples:
> >                  port@0 {
> >                    reg = <0>;
> >                    dpu_intf0_out: endpoint {
> > +                      remote-endpoint = <&mdss_dp0_in>;
> 
> Mention reason for doing this in the commit msg.
> 
> Also, messed up indentation.
> 
> >                    };
> >                  };
> >  
> > 
> 
> 
> Best regards,
> Krzysztof

-- 
With best wishes
Dmitry

