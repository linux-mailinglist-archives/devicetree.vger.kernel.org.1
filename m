Return-Path: <devicetree+bounces-197826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ED312B0AEE0
	for <lists+devicetree@lfdr.de>; Sat, 19 Jul 2025 10:43:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 441043A254D
	for <lists+devicetree@lfdr.de>; Sat, 19 Jul 2025 08:42:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47752237163;
	Sat, 19 Jul 2025 08:43:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aumUsjPS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5368236429
	for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 08:43:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752914586; cv=none; b=TfQr0Zgph6SuiynWsIeWxm6kdIwIiD2yTE/ajjJViQNsfuvqCqB6HMIWYPU5MeOeiMZ7AYxj6qnqQSFmSsUMXTuAfYRV9XMaB5zqV4PV/vDwO+Q0TEpctqxaTH+0eVIt+YIbtChIumY5EFuEKy2iafaDiYfiYQO/7s9tHCmsWNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752914586; c=relaxed/simple;
	bh=7iN9/WrBKY25iKx+cwZ+YxYqzk4F14RrKVxydDAyfcI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BmRtQDMF/BFGATmP9/y+TS9Az+1MR1E4NIn6BDhf4Q25SgKgVliArQG4e1GPSg6BsIp96NxPF0Ml6s2Z9zlGJvqmoaIC0Arp4vFKxzRadY/sCXVbmhuNF/mhljq8bpr0FSUKPDfnhQZHdxtk+LPTHqrOQTkY3cmU0jwrZBTLXRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aumUsjPS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56J4ENL0015444
	for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 08:43:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+hnvC71NGCDaTEDlHwH2F+79
	X5DpGLt8T8Ke/VwrdV4=; b=aumUsjPSYsYh7JHM04fduprz9eo9a/rcbnLWUMAh
	UABO04GkBiQfvJwEk9tjuTfhFZBc3o+qt6/SrO7+Crsmah+B3r3vX4bYgphCLqBk
	BZqBZIUwuYCszGWq1l8UOhAMi2SPyyXji2okom/U2ZjBZbv85jliWQeF//r0xKp9
	/ZAMRMOWIb5j93TskW5eV0LYVaPbqxzrxore/6zgzPnYWzOch6HSVYJa3/se11bf
	dbqBLYVw9pZB4LycMoAhJDCY7q7HGIgd8i8MYh35Hg2cujtPCn9ImbzSLfdF1wNd
	mw3xOtFMFCb41izcypdp44OrmSYXiTraqLmkCruYNccDFw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48045h8c3u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 08:43:03 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7e338e627f1so772910685a.0
        for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 01:43:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752914583; x=1753519383;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+hnvC71NGCDaTEDlHwH2F+79X5DpGLt8T8Ke/VwrdV4=;
        b=sW3bkZxCA2GbtbGiy6lxlXyf1rT3aoUFsmGbU6eE+1sxN69SGOlsSMxsDyjETa2+KC
         a4EpwhlFgjtcDNQL+l8+CrXjVL84IOaRQobc46RzQVqZcB6nJd97DndKgIp9UJhacggx
         YNa/QD87khWGJYGZIMBpmkTJXKrVZeURecke6zJ2ovw+3A3sVgXJzAqRV8GXANadzBp9
         sPzeglQJ+kNXblXOuDDHakDzlHgCLkoJH1qnyrmA+Nq+rC0cg/5VFgc5E5lQcgcjeRJq
         zFwTu9QHsMgLk4kLpyCzmO/JoL5bAD2YO+JWzmDyFv9VHQ8yH1zaIYywXfX/guni1sId
         5uxw==
X-Forwarded-Encrypted: i=1; AJvYcCUKMlqE/BoukAnCup1Y7kyBKjuYm3ls8ikoMlzSIELA5/Kl4bqYi5ai5KLrYCzEeC3rZKwBd2YYqq8E@vger.kernel.org
X-Gm-Message-State: AOJu0YzSQXRg+oG2lkFyF2Pzi7cJopCe4CYK0ht1AxUrfLhQ4kBbcWuJ
	pQLtrlVeoh+65URvFs7rC31CfIiluCa5auNLivZSkxdsbOF/UQFmfI0rEMH9r83WU+ADJoMfuHL
	kS42WYVSUptSEXsxFhhiqlHR1b6XcwJl3ggvdEMicZe0JfSmQNjryxKje12q3tgOv
X-Gm-Gg: ASbGncuBkiucX4RtwRjbDZ8nO5wSy6ad0S31y1b7tSbTryoenL+rS7RUuvehaMxmPYj
	IocMZYxObGXBXvLL4ZEuj+JfcWN7PKCsX8I2fBxLQHXj9hSZx6QtZgSEsypPUJnEYDUnTNCjote
	cJ6GFrMLJ+SWw9gq3RcCgWMBeNvD5bSB4RvT+HcU5euGunfSXPCTWYInkdtmxNrQWItIPoRatXr
	4XvASsOf2xzTLtljEVqWfXFaozS9kWrdEQRXDpghK0CKz3FMX/eC6zYBzQI+qw/1sFWzKPclfEX
	T2wCpyW5otlWXSMvjYjb5ogebiYkMIBrAc6yMP6l021RzwvAIhaSYR13+0eZZ6o+Bfxrb5/PTs3
	OVjej1pdUfehCnOyCxmPDGcCx27ayI4QW84nvQLwE927cjjUt+s9k
X-Received: by 2002:a05:620a:1909:b0:7d4:38f:a7b3 with SMTP id af79cd13be357-7e356ae1a00mr764034985a.29.1752914582398;
        Sat, 19 Jul 2025 01:43:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHaL23hIhZB17M6H1XzM5tH6etKFp/euLYf8xiH9hxUCYpIqAx2BG9Fx6g8LCbtyU3x+HRyKw==
X-Received: by 2002:a05:620a:1909:b0:7d4:38f:a7b3 with SMTP id af79cd13be357-7e356ae1a00mr764029885a.29.1752914581761;
        Sat, 19 Jul 2025 01:43:01 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55a31d911c9sm623429e87.147.2025.07.19.01.42.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Jul 2025 01:43:00 -0700 (PDT)
Date: Sat, 19 Jul 2025 11:42:57 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Mahadevan <quic_mahap@quicinc.com>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Danila Tikhonov <danila@jiaxyga.com>,
        cros-qcom-dts-watchers@chromium.org,
        Abhinav Kumar <abhinav.kumar@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Yongxing Mou <quic_yongmou@quicinc.com>
Subject: Re: [PATCH v3 1/5] dt-bindings: Fixup x1e80100 to add DP MST support
Message-ID: <fmehneccbfrtvr332o3z5qo4wduha4i32c3lf5vixcbskeioll@7ax7pupvdcnt>
References: <20250717-dp_mst_bindings-v3-0-72ce08285703@oss.qualcomm.com>
 <20250717-dp_mst_bindings-v3-1-72ce08285703@oss.qualcomm.com>
 <unwinuwoft6sfczcjlqq5kijss3ttggfbobs6ydw5c2lkmndc6@7c23jntiprob>
 <1b385a59-5461-4c28-855e-d2379c2a8173@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1b385a59-5461-4c28-855e-d2379c2a8173@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=ZtDtK87G c=1 sm=1 tr=0 ts=687b5a97 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=cjBuAn5bJLGjDEKm4m4A:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE5MDA4NiBTYWx0ZWRfX4U9BFK8HBVRD
 oCeXU+YxEmh7x0LcVr1TkNBqnU4vnlXtj74ivBvez3ntzwE++PvqDnRn3TSkC/oZ1mptC4txxVQ
 MfORtvcz/149wZ1FQeL02RqI+jsm8Sn2FaVkKZqgshs267ThNx7YNvYaHkSm9GSq8equtUfogcK
 4nqO7t1nLtFi/XLyCrMKM7+bLmtjD32vPeM9nO3MnSihvBhyZvEIUlr/9swXCY6v0RFtTuyz1oJ
 2IX5ng3u/Wri8sL0GJYP+2ioUTrFjuaRehBpAHbQMKmflGdPqV2DwkCa0YCLNo9XhYf/WQ9j/QX
 J6wk8J2wimwqqKDAQJPu94YR+2e41ymOagVWiAPUS98vMq+iMEeq954241/WNjzhE3oayxIDkle
 aMba+1pm1SMlYdmqrugsSe6jAiA08s+Dbrud+Zi9fyZHR3TyifMNtVcQGj6pmnQm0sfq5KTm
X-Proofpoint-GUID: EG1EsC_P0ZpSEHDgpSzydMEpVlkxJ0SN
X-Proofpoint-ORIG-GUID: EG1EsC_P0ZpSEHDgpSzydMEpVlkxJ0SN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-19_01,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 clxscore=1015 spamscore=0 phishscore=0
 malwarescore=0 priorityscore=1501 impostorscore=0 mlxlogscore=999
 suspectscore=0 mlxscore=0 lowpriorityscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507190086

On Fri, Jul 18, 2025 at 05:16:56PM -0700, Jessica Zhang wrote:
> 
> 
> On 7/18/2025 2:13 AM, Dmitry Baryshkov wrote:
> > On Thu, Jul 17, 2025 at 04:28:43PM -0700, Jessica Zhang wrote:
> > > From: Abhinav Kumar <quic_abhinavk@quicinc.com>
> > 
> > Please fix the patch subject.
> 
> Hi Dmitry,
> 
> Ack.
> 
> > 
> > > 
> > > Add x1e80100 to the dp-controller bindings, fix the
> > > displayport-controller reg bindings, and drop
> > > assigned-clock-parents/assigned-clocks
> > 
> > Why?
> 
> IIRC issues with the x1e80100 dp-controller bindings (i.e. the reg bindings)
> weren't being picked up by dtschema because the x1e80100-dp compatible
> string wasn't in dp-controller.yaml.
> 
> I can add this to the commit msg after moving the
> assigned-clocks/clock-parents change to patch 3.

Just explain, _why_ you are performing the change, not what is being
done (this can be understood from the patch itself).

> 
> > 
> > > 
> > > Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> > > Reviewed-by: "Rob Herring (Arm)" <robh@kernel.org>
> > > Signed-off-by: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
> > > ---
> > >   .../devicetree/bindings/display/msm/dp-controller.yaml    |  2 ++
> > >   .../bindings/display/msm/qcom,x1e80100-mdss.yaml          | 15 +++++----------
> > 
> > Split into two commits.
> 
> Would it be better if I kept the compatible/reg bindings fix in this commit
> then squashed the assigned-clocks/clock-parents change with patch 3?

That depends. If these chunks are required to fix warnings / errors
after adding compat string, then keep them in this patch. If not, split
them to other patches.

> 
> Thanks,
> 
> Jessica Zhang
> 
> > 
> > >   2 files changed, 7 insertions(+), 10 deletions(-)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> > > index 9923b065323b..4676aa8db2f4 100644
> > > --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> > > +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> > > @@ -29,6 +29,8 @@ properties:
> > >             - qcom,sdm845-dp
> > >             - qcom,sm8350-dp
> > >             - qcom,sm8650-dp
> > > +          - qcom,x1e80100-dp
> > > +
> > >         - items:
> > >             - enum:
> > >                 - qcom,sar2130p-dp
> > > diff --git a/Documentation/devicetree/bindings/display/msm/qcom,x1e80100-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,x1e80100-mdss.yaml
> > > index 3b01a0e47333..0e699de684c8 100644
> > > --- a/Documentation/devicetree/bindings/display/msm/qcom,x1e80100-mdss.yaml
> > > +++ b/Documentation/devicetree/bindings/display/msm/qcom,x1e80100-mdss.yaml
> > > @@ -170,11 +170,11 @@ examples:
> > >           displayport-controller@ae90000 {
> > >               compatible = "qcom,x1e80100-dp";
> > > -            reg = <0 0xae90000 0 0x200>,
> > > -                  <0 0xae90200 0 0x200>,
> > > -                  <0 0xae90400 0 0x600>,
> > > -                  <0 0xae91000 0 0x400>,
> > > -                  <0 0xae91400 0 0x400>;
> > > +            reg = <0xae90000 0x200>,
> > > +                  <0xae90200 0x200>,
> > > +                  <0xae90400 0x600>,
> > > +                  <0xae91000 0x400>,
> > > +                  <0xae91400 0x400>;
> > >               interrupt-parent = <&mdss>;
> > >               interrupts = <12>;
> > > @@ -189,11 +189,6 @@ examples:
> > >                       "ctrl_link_iface",
> > >                       "stream_pixel";
> > > -            assigned-clocks = <&dispcc_mdss_dptx0_link_clk_src>,
> > > -                  <&dispcc_mdss_dptx0_pixel0_clk_src>;
> > > -            assigned-clock-parents = <&usb_1_ss0_qmpphy QMP_USB43DP_DP_LINK_CLK>,
> > > -                  <&usb_1_ss0_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
> > > -
> > >               operating-points-v2 = <&mdss_dp0_opp_table>;
> > >               power-domains = <&rpmhpd RPMHPD_MMCX>;
> > > 
> > > -- 
> > > 2.50.1
> > > 
> > 
> 

-- 
With best wishes
Dmitry

