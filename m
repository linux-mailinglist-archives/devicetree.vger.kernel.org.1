Return-Path: <devicetree+bounces-214364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 47910B48E06
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 14:48:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F277A44040E
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 12:48:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F2543054F1;
	Mon,  8 Sep 2025 12:48:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nILe2uh6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 833FF3054F8
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 12:48:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757335691; cv=none; b=RFxJWrt1YnNmqZvwCNhX3C0zLYgKr3yNgrCdNj0zlaMvCH5V+tGerlvHrN4svVsaKo9putCVfeshlb5pBJg8mBqBxQPJ/vwgjw9+RyPTnpS0DhQz1rqvxUd+x8bE/Q80hHJk2s5P8fa0KPBtVSuWq2BTJ9RzHlQO9bclTQCQr70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757335691; c=relaxed/simple;
	bh=K2/YBguJd5+rFvNMPdDfR5o96Jh6aEU7iCnUaQFSBXI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uiBuYi/apvRGbf4JgM1OWiOzU0W75PIOfNSVkbXOPGYUtSmZWYf7nJOc/TsjfLvg0ScZZLRDvA6w+6CLqCSZ1rdLXpIaiU1pYhOi5uaWOX7WoA49nlSwGCAOCY9rvmbjNlrLUXOE/nt2o3Wx85aKn9W1g3eh8yJosaDaS33DOyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nILe2uh6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58898Cf8005773
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 12:48:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kGOV2gIZ8/LZzeSdtfajpCAt/ShEWupLlnbeU/zE74Q=; b=nILe2uh629sd5hrh
	pJzmI2VhURz2gYm3SUJNLN4v/eoBUpsWxGui22awgo/dUeJb4syD9DE8ffPE1BMG
	/gyAfaZKgSfrUYJVDznyjROnpkhmcfi9Vb7kbmnx+y7vZBzEOQZxMMepPXJmIK4s
	/1+SxV2SEfYJPjR4YYq+mobf+dUFV9ITb0cLerN+9UP1tU1sENqE+kOiGkNg4sE5
	592CNMjM8hQsKMBGMiBVAbUnxIV+UQm0kvg5MIG33wvMmdKgn29LvOVzJkjm9Lza
	/9YEkIDHiLkHt3RcyB8nKxE8HA4WR9J3L1ZYssq4pm2m1n6GbObqB3CpuoOJ2IeP
	Ig8+4w==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490by8vnbs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 12:48:08 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-720408622e2so93672456d6.0
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 05:48:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757335687; x=1757940487;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kGOV2gIZ8/LZzeSdtfajpCAt/ShEWupLlnbeU/zE74Q=;
        b=KCd8XsOcCnL/Kcc2NcWPskuUqcOJJnUr5SeFuPMH4AirwKY/ree9C70DUivUYdQjMP
         s7Vrvhe1sWtfGvK30K3XPrcnYt+BCZGRI9y/vCedrmQL0sd4pDQCc7JT5bSxNfB5Gflu
         cENHDHNI2eNQ1Swqw4hWPv1CPiRGNQyC6s7VEY6bDnibr0ZdQD9hFPKlrBqkAweQdroe
         Fk3/g3M19pjzjj7cjKZcmMuBclRHNFYUocAzHvmRZD9hZKVUwmdKfPeJwE9cpJK6SsQf
         6PBkmSv7wVDa30dAERk+Nn0mC1RwMUY6eCVTYwDzCdHhiZUbsrYbQLjpLNu4FZqpy4Re
         EYaA==
X-Forwarded-Encrypted: i=1; AJvYcCVEc+k0BpbjSO/mYPOLKnDduZbeicw9QDZ8DfPLbBAxltmu4L6yWa2/xxmvor7YYk4+4daiwK26nQOj@vger.kernel.org
X-Gm-Message-State: AOJu0Ywhj3wmu1GHvhduuSbkdnPDvKQacVmMafqhm8jrqbyY3B98Psoa
	bv27mha5UOkgZ9hujAUq/BgbFs4Bir2yFlZNo79x5G2uV+yYONzKyqMVl3u3B4PC2HVswMxlftV
	XgGurYBvyIGh3CwzI/pPXd8GlpVkGwmSH7Czyd9VlLBTZhQjO5xLvWgOT13ObAe/Z
X-Gm-Gg: ASbGncu5FfycACl7G5WJ13jx4CFPKIrO6FZv2lyX78/HsigpVOlmVfpQrX0hOTk3lGw
	GKt0ivpKa0uKRS3s54Hu0xPOWz2bkacJN8qRXwRvP6Kilc3H97RroEQA4OoIDHq755YDOSdEAlG
	NFlVevRMX6DIid1sL6GpJEYO+Hz46uylR6ZBET9Ih+iuG16xs5+V0tvAEC9ic3uf5TyFoKzPtRV
	AaUM6cFPVFuV1GVHclZDPiSRny8E+lepOcHkOkOYCXgRoBuuVZ7ApNlKsMpNzf9z5Fyh2kag8Wf
	VnlvJPvceHIgEHwF4jMYhBZflJCCtGVyc8hxwLuDNyxTau1Gh3c/MMqGod45sxMEAsZLGdyELao
	UB2nT+KY9B3JUOwI08sTJCK4xIwI64aEdWkFl6Mkvm4JJMd8SYGct
X-Received: by 2002:ad4:5965:0:b0:72c:3873:2e43 with SMTP id 6a1803df08f44-739322fe85dmr103270776d6.25.1757335687021;
        Mon, 08 Sep 2025 05:48:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGg9PYvI2ZzljUif+Cb6iwuKs++XEvfJYXlwnEIgsLnk5PM2U1MDib/KVyVesyQhvdkI0ZL4g==
X-Received: by 2002:ad4:5965:0:b0:72c:3873:2e43 with SMTP id 6a1803df08f44-739322fe85dmr103270296d6.25.1757335686430;
        Mon, 08 Sep 2025 05:48:06 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ace9c65sm3569403e87.85.2025.09.08.05.48.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 05:48:05 -0700 (PDT)
Date: Mon, 8 Sep 2025 15:48:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC 3/3] arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s:
 add HDMI nodes
Message-ID: <2iazalkbsl2vrukgzt7ba7jd5hhok76f7j5tlfbe6d4c2ezxks@25sol47tyt72>
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
 <20250821-topic-x1e80100-hdmi-v1-3-f14ad9430e88@linaro.org>
 <a38df652-54c0-4216-9aa5-c8d32599c8f7@oldschoolsolutions.biz>
 <c66fe361-74c9-4471-b371-353ca582bb3b@oss.qualcomm.com>
 <xzw26v6aqutgau3zwm3njblf2qw2em53n45ju2yhhfh7uhyxbz@6kqvink2chld>
 <365b984c-a5e0-4fa3-a011-b897107e2b92@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <365b984c-a5e0-4fa3-a011-b897107e2b92@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Yv8PR5YX c=1 sm=1 tr=0 ts=68bed088 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=uA7_YokYup9Xwil_snIA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=iYH6xdkBrDN1Jqds4HTS:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: Aq9f_2-rrqXjktX9DBa2jTVyAMxqwjux
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfX23gMmTV7mId4
 RvnMjtUaFwCqccRVZH4Qi1cjUyQWX3Qkpjwu4dTauRi+9tnwoGzLWcJXCXCUyqpyyxfw+d7OUEa
 ac6PZN3n2yPEdYcnD7thYZajLAoIzGdTUMr4oRZt6mTwWALGR8lvIZHDiMyV+koFJNdTAmAyi4B
 SUwfH9H2GDY5IMbnMylZCNpc3ut8mbbIO5lY5xYyxQtLwad2rUBJaMx0O4ugUCqMUaQcDVLSxZs
 G02LyvZkj8SaAZo2H2dJFWfvXqNuKEKEP8l09Fdp8Kkfgi4+CXyvbOc81R2XkDZ7UZaUoPUgcUr
 O0ivMKXumGfzztbvGUPfBXtzrG0R+Bov8VLSCRoJE61G9rmoQNeXWyFR7Uah+JEqamYtJB6wvVz
 QAWopW+w
X-Proofpoint-ORIG-GUID: Aq9f_2-rrqXjktX9DBa2jTVyAMxqwjux
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_04,2025-09-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 suspectscore=0 phishscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018

On Mon, Sep 08, 2025 at 01:40:06PM +0200, Konrad Dybcio wrote:
> On 9/8/25 11:39 AM, Dmitry Baryshkov wrote:
> > On Mon, Sep 08, 2025 at 09:16:29AM +0200, Konrad Dybcio wrote:
> >> On 9/6/25 10:41 AM, Jens Glathe wrote:
> >>> On 21.08.25 15:53, Neil Armstrong wrote:
> >>>> The Thinkpad T14s embeds a transparent 4lanes DP->HDMI transceiver
> >>>> connected to the third QMP Combo PHY 4 lanes.
> >>>>
> >>> [...]
> >>>>   .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    | 44 ++++++++++++++++++++++
> >>>>   1 file changed, 44 insertions(+)
> >>> [...]
> >>>> diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> >>>> index 4cf61c2a34e31233b1adc93332bcabef22de3f86..5b62b8c3123633360f249e3ecdc8ea23f44e8e09 100644
> >>>> --- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> >>>> +++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> >>> [...]
> >>>> +&mdss_dp2 {
> >>>> +    status = "okay";
> >>>> +};
> >>>> +
> >>>> +&mdss_dp2_out {
> >>>> +    data-lanes = <0 1 2 3>;
> >>>> +};
> >>>> +
> >>>
> >>> Hi Neil,
> >>>
> >>> shouldn't mdss_dp2_out also have the link-frequencies property?
> >>>
> >>> +    link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
> >>>
> >>> Or is it something the bridge already negotiates?
> >>
> >> No, it seems like our driver falls back to HBR2 (54xx) ever since the
> >> driver has been made aware of this property:
> >>
> >> commit 381518a1677c49742a85f51e8f0e89f4b9b7d297
> >> Author: Kuogee Hsieh <quic_khsieh@quicinc.com>
> >> Date:   Tue Dec 27 09:45:02 2022 -0800
> >>
> >>     drm/msm/dp: Add capability to parser and retrieve max DP link supported rate from link-frequencies property of dp_out endpoint
> >>
> >> Dmitry, is there any reason not to allow HBR3 by default? Is our dp
> >> controller/driver not smart enough not to advertise rates it can't
> >> support, during negotiation?
> > 
> > I don't remember the exact details. If I remmber correctly, there were
> > cases where using HBR3 resulted in a less stable signal than falling
> > back to HBR2.
> 
> A very early revision of that series has a commit message that reads:
> 
> """
> Since it is not every platform supports HBR3 link rate, this patch
> limit the DP link rate at max link rate if it is specified at DTS file.
> Otherwise, the max dp link rate will be limited at HBR2 as before.

Yep. And the platform here means the whole device, not just the SoC /
SKU.

> """
> 
> Konrad

-- 
With best wishes
Dmitry

