Return-Path: <devicetree+bounces-229725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 354E7BFB2D1
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 11:35:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A9D225666BC
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 09:35:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 953B328DB49;
	Wed, 22 Oct 2025 09:35:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="p7muIRRM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFB87289376
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 09:35:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761125705; cv=none; b=oezOxlpXmxHKM8Oq5iU3KELcNgJcccuicL7++B5VR6NuKS5zfEq+n09TqQi0lbwJ449AQOeO6+MapJS1Y8Ar9Vaeanes9+K6BdIVSDLZPu3dF8/y0XtPtyYzzb2Uf948Qx2uzZIaJthNy5iPYTSWOckCFIsHwbsJ0ZzroN82bVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761125705; c=relaxed/simple;
	bh=iaNEx7s4uoRtmsi2utH1ilDHvvFszLsPplSRybeNpP4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a//X9+x1oBJJ8ply3Pj7niu3w7RBRxYb9ZfRBdYhWQjkNrfw6Tjst+uA5aZ0bcjaNlGxNA2FjQyjJVnsFBJ0NbzueE3bqWrGh9YmJiOGaoe1HkX7inqqp3y3XqfrxZCKPOKX1oRhtr5KXD+uMo2ajz4NuzD2kVxWBWN/onkjtsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=p7muIRRM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59M2sFSF005242
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 09:35:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=3FTnxE9dKj7bwSpZ1M0v3uAR
	b4FbmeVp0/jOfC46FWM=; b=p7muIRRMqeoEpMkvhS5e1BdrF8nVhK00Es7oSREz
	BlH605ZZgarTQlVK49cTO58BCxnrHXsL4m2P+DHv8kgR54kP1h8rLC/c8hAlRdF/
	IaDOUJI0C+mGs8rfHowR5VzwQsDwk3MIKjxqy1ozq+GCByhRpKcXuUhlLyqfNWae
	JJUPfTqLnWem+MCsWk/lT2H2gG+pebDe/QzO+5avndaoorHUKpc51ri3aFY+6scp
	L2IFtbuqWtIpex8cN2aYuABN5GCWGVwfM7kwGBD6tiP4wwi+VD7JPgnbGbUYRW29
	o79t0JauHuPHcMc8l0Q/PHbeBLp80qCf6EShlUnPXtotBw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v3nfm2t6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 09:35:03 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-88f7eff9d5fso1131244585a.0
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 02:35:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761125702; x=1761730502;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3FTnxE9dKj7bwSpZ1M0v3uARb4FbmeVp0/jOfC46FWM=;
        b=UsHtfigpWad3BZBw2kOaMeTSvxcmQgwkOdotxAttva94idvQ40Iet/xgF3jCvpWs5G
         S8rlxg06+V1dq5ATO4uDNxOVubI7iXIuZl/sriQYuwcr4Wp2V9psmpXxF81hlqhFwGnc
         poPK9rYsbQ/HnnH9zPvemfWCLYD5Azd8u91lR3wnOuEKz/ut42fCfk6o+hF07c9TSL1O
         SV/AF9OljphhqrpzBTV0bEaW0CJIyEk9G0/6Gu/8+OMULmZ8b5z0Ame3xGS6EZ/SSqdM
         j3ZOYMEeVCNd+b/YmfHchjXxrLIRRfaa2zqb9FncbI0GkGkUUQ7DbOKGXPNE3vVSirlZ
         2ssA==
X-Forwarded-Encrypted: i=1; AJvYcCVHYgp7tNQjDiHSdxKJXhJTdyKxZz4AUI8fhLq+uEx5z/YjKfzoNz5slCZakqAd7dVaannmiHWXlfcb@vger.kernel.org
X-Gm-Message-State: AOJu0YyiVRTUCBX1gOQXqgIMN+P+cslyWkV78AKzhjuwmf+Yp+nIOaH0
	q9MWk1z5wx+RW8go9lFjZyqAIQ3+J+1Y2qFeV/KAgosbTBuwncRZ9zCNx9lLhZv2IjU8oqBlVhf
	Cx94wyorhd3Nci3KLsv1cDQnSTn4SGnjjm8JfnPYDXDuAkX2Zvjwh4PfDwda6MSeG
X-Gm-Gg: ASbGncs7fdJpKTj0sOzI0J4t8PV8oet+dRdS3OlrtbGNLJpyNqP79IZmurNVCrzR2iM
	5TsjRnC/7kADifkyat9jjORo4tpHZn5ssUfM9kUJDstBawn96l3DRRuVQFrvFBPyMZjsw43FCxT
	NMMffDepQ9igDDVFzXbW2sSWZ4WItr6Q/RmBUrRHv84TnrYViQUjbPkr4Ormm8+cvw8C5B+k8e2
	nILHwi91N4R6CEhlrK44+iE+yekCs7q5BgCnswCKY5kVSXxKnYeCDRIu/1tZkxrd4ToQBFw1fzh
	Z/l8JHobYKPVTkFBSrgBN+glLVc3Szs5/+9TRZINdT0K/xn89OjQMYLSqPzu+swJIpkMy5WAppb
	+nBm6XKn+raIgblBODB3Vi3LO4E8skwKA3uzrr/J4Y379UI1H422VkTFMiubittURuLVuEXzy0z
	0DgXWL6XUCAko=
X-Received: by 2002:a05:620a:4542:b0:878:4b36:bd2e with SMTP id af79cd13be357-890707f9bd2mr2572312785a.59.1761125700944;
        Wed, 22 Oct 2025 02:35:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFqe3mjPVmuogD+ILAShdAe/Bdmd0fzuf/dwf5tkGY88cXDlcY6uEnEqG/0GchRnCldvugDEw==
X-Received: by 2002:a05:620a:4542:b0:878:4b36:bd2e with SMTP id af79cd13be357-890707f9bd2mr2572311085a.59.1761125700490;
        Wed, 22 Oct 2025 02:35:00 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-377a91b7086sm37505991fa.12.2025.10.22.02.34.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 02:34:59 -0700 (PDT)
Date: Wed, 22 Oct 2025 12:34:58 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Robert Marko <robimarko@gmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Eugen Hristev <eugen.hristev@linaro.org>
Subject: Re: [PATCH v2 1/4] dt-bindings: soc: qcom: Add qcom,kaanapali-imem
 compatible
Message-ID: <dwfvko3hszsoh4ihnz3qdpsugmocbkrbhosijdw5q3bxh64kuo@o74as2li74px>
References: <20251022-knp-soc-binding-v2-0-3cd3f390f3e2@oss.qualcomm.com>
 <20251022-knp-soc-binding-v2-1-3cd3f390f3e2@oss.qualcomm.com>
 <g2iviaqetgxf5ycz2otzkpmmc4goo7xuyjmttuu254bfzqqvkf@4vybjh4eghpm>
 <4eebcb7d-1eca-4914-915a-d42232233f9f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4eebcb7d-1eca-4914-915a-d42232233f9f@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: WBTxzZnFiv7mpfnKT2XTokAZLQwB-_cW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyNyBTYWx0ZWRfX9vrfMN1sZ137
 xx96pcwDZ9EW/p7G+XSN28+KPwPsTCv4kCuMBwp3Y1R0ixVCnx8S9Tg+FQITrO6KE3AWf00dcd0
 pqavTD9kFTPO/PMjX0JAPgdoy4IdpgkTkk6t/wcKJ9opY5BwsFeFk//6oPHfTsI620DdjNTCVcK
 rYKG2olxB06pVwaBnkLCWQDB9a6YmGJLyXyVD4ZKjrAOgzhminM40OOrKwkFWAXBBiazplpSOHQ
 800fVErLPqazxlqOUcXTJTY9+tRYD8QjOWIr9iGUIXXOAQL8Hd5VnMUJ4EjJ6NWNbiVA4KDKO0O
 1EyCTlhk1urlmx0qHaBjJhKrrHo/9qamZfA9y8c/uANf4FMlp7tRIZSLnLYlbW7MK9z7MabAusp
 TLSVmP+9BwOS76TIArkVPtHQ+17Rgw==
X-Proofpoint-GUID: WBTxzZnFiv7mpfnKT2XTokAZLQwB-_cW
X-Authority-Analysis: v=2.4 cv=EYjFgfmC c=1 sm=1 tr=0 ts=68f8a547 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=weVaEQBACJBk3bPpPTMA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_03,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 spamscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 impostorscore=0 phishscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180027

On Wed, Oct 22, 2025 at 05:05:30PM +0800, Jingyi Wang wrote:
> 
> 
> On 10/22/2025 4:49 PM, Dmitry Baryshkov wrote:
> > On Wed, Oct 22, 2025 at 12:28:41AM -0700, Jingyi Wang wrote:
> >> Document qcom,kaanapali-imem compatible.
> >>
> >> Reviewed-by: Eugen Hristev <eugen.hristev@linaro.org>
> >> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> >> ---
> >>  Documentation/devicetree/bindings/sram/qcom,imem.yaml | 1 +
> >>  1 file changed, 1 insertion(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
> >> index 6a627c57ae2f..1e29a8ff287f 100644
> >> --- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
> >> +++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
> >> @@ -19,6 +19,7 @@ properties:
> >>        - enum:
> >>            - qcom,apq8064-imem
> >>            - qcom,ipq5424-imem
> >> +          - qcom,kaanapali-imem
> > 
> > Can you use mmio-sram instead?
> > 
> 
> Here is the node: 
> 
> 		sram@14680000 {
> 			compatible = "qcom,kaanapali-imem", "syscon", "simple-mfd";
> 			reg = <0x0 0x14680000 0x0 0x1000>;
> 			ranges = <0 0 0x14680000 0x1000>;
> 
> 			#address-cells = <1>;
> 			#size-cells = <1>;
> 
> 			pil-reloc@94c {
> 				compatible = "qcom,pil-reloc-info";
> 				reg = <0x94c 0xc8>;
> 			};
> 		};
> 
> other qualcomm are also using imem, could you please give more details on why
> we should use mmio-sram here?

https://lore.kernel.org/linux-arm-msm/e4c5ecc3-fd97-4b13-a057-bb1a3b7f9207@kernel.org/

> 
> Thanks,
> Jingyi
> 
> >>            - qcom,msm8226-imem
> >>            - qcom,msm8974-imem
> >>            - qcom,msm8976-imem
> >>
> >> -- 
> >> 2.25.1
> >>
> > 
> 

-- 
With best wishes
Dmitry

