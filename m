Return-Path: <devicetree+bounces-222449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FF1BA930D
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 14:23:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9AF01189EEB5
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 12:23:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5EC6305E2F;
	Mon, 29 Sep 2025 12:22:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="f4PjeNaF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57F22305954
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 12:22:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759148579; cv=none; b=mzVt4lgG60P7JDWf7NR8wKCeXoUToN/EWN4OVkmEC/bnTvsPOjfYk8EVSralPDeUWb85b6R1KfZLrTP34O2vJPv48dHU1QVqYH/cUw70Daib3ozii9C4KGeczB1pHQi6Buk+q6L1xWzSQZ+osNA7hCQPcP8Mnrq8FlUASmbjSy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759148579; c=relaxed/simple;
	bh=sAGuc4hmJXIyaAwaPQeIzU02HACEnFbZX5F14BXo+Ok=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SuZeQw8rtmts5HV7YrggffU4z+CE4z0V1XF7kQi6IrXfKEc8rop/UL2JAjlhkBUWZrKhUbnbvlVWna9Lpy2RFly+Qa8jSrRpEHHS1aV49TfORsY/nHBVvhYYtCndOW0VZe+Nc/mnIqWHc1uJwlpBx/tmoyw1sP5D4LtL7vnXjX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=f4PjeNaF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58T9wl77011761
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 12:22:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=T4SswY8XOqLvgsVeODsfA0qM
	1EnNqY56NQss7ej8grY=; b=f4PjeNaFmiG8uXxmYXyvHtxRzXd/ERlufZ3bnvqU
	PKy9ldebZfVzGbDTO43IzWabVgZY2mcMnz/uCD42F8UG5nP8lXQ1aPeAoxvvgWIE
	93yRe1MjL6yXAcV1kEOCex9BulR4lC2OL0/XmbJzmrJIar75cNMOfb5tT8MesKIw
	C3ED/t2oPZ4aC8Xtv1lTHSdHE6yGY4b+SXH9ExaUog3Kl0MHiokNmkvcsk2RX7rK
	uSbDLUh0NRfLaMCt8VWsMm+JamtIwE2Gmw7iI2l1MaR15ZYHwiOKZrC/gFpIaAjD
	JV5jDsf9rP9SrBx3feFAwt7xPQgNZHvKVzzE3lQMhq0+CQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6vqw5xq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 12:22:56 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4dec9293c62so59335801cf.1
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 05:22:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759148575; x=1759753375;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T4SswY8XOqLvgsVeODsfA0qM1EnNqY56NQss7ej8grY=;
        b=F+IQEWcWVtWCxT5AJPO/zOOu1arcCTPMN0A0e7qfSGrBF31D2U885C1SHeQ7nH7huc
         wTzxZGk7DoYJd/mqD0iwWD/Tu87hS1WdlbjJzSQLVj86En91pgS5ILwNoDXhFrZa5YwN
         hwMHVdOrfwNQKUTjXsWqMYE/YKrzNMPsvKaWuoW50ku1oJP7bMk0mfCtQyXHQ2ZUXk9h
         fytbX2GGJRRPm1l5ItZrxkA9Kjr8VLU9J9toBvemd0z966pi1cZTxMq3/9AEebBB/cdD
         bXQ02fD98Zqudw5zAVmRU6ZPxZlOTFMEwx+bL6RbruxIbQrPkOvfqLBOpvatOupND1mP
         4rXw==
X-Forwarded-Encrypted: i=1; AJvYcCVkqIPjA3PskVfT2owJhFFNP8XQQakwmk5lE7ZaDVTUNg/+dZmPvHVNb9nizPGsjMfQKCMjOKmxZzp2@vger.kernel.org
X-Gm-Message-State: AOJu0YwV66raR29YcVa/17pnnVnpFaB9d0yfyiF8NSof6qeUpUYWLvw0
	jfaygkZK02kiAxtva+YbLYnh2JfT6vChZrGrDWvojIKARz+BbPv7qT7KtiKtHiBhRgoqK3gTfUt
	UlTGvB3ukK/DdT/SdOxQoGcj4fERcP0cGsZMG2mQ69TcjSreB6TrQNtpX+eW/qyBy
X-Gm-Gg: ASbGnctsfnxyv12pp4Xo2/WrYd1pnnunSu+/ZrduXmAyj0cPlOoxT6Op7d37pb1RVrH
	wAp4yT7hf2XMg8CaU0/fqTFl8+16OkywCtbgqn+BkJXi8+CwhU1AeFRWaU7NPOU7QmMojbNfwAD
	AO8Ad41+wl7NwGWHsoroZPs4jOt1+MlX4AhdRdXsUBchRxzd9BZ1InVAem7VW10ml6XjQWClLmO
	9Aj26Itpxvwpusm+6YDA4dgBkybhkU8uvTIIdOksapEU+BHRxWAnhD2bDfi0TYzCVsef7QhlqS3
	1pkyIiZmg8ecOhsuiE3LRN3VhAOfV4SdpB7RAVYZbmcHF3z6hpkSML+E9NTY2uvLviSugNVeS/C
	vy4Q4937jIPmWt/U434yYZVQ7kXCVjZb4GgNZ6LqaFiE+hGCcofaR
X-Received: by 2002:ac8:7d8e:0:b0:4ca:bde6:cc8c with SMTP id d75a77b69052e-4da49348df8mr218164871cf.30.1759148575026;
        Mon, 29 Sep 2025 05:22:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGe/xFQ41Vdyn76qTMLChRKmGI0JjKWxsygUS+t/nIPg0pTYDkgEsrKnVFqgnmMyK8XDNzehw==
X-Received: by 2002:ac8:7d8e:0:b0:4ca:bde6:cc8c with SMTP id d75a77b69052e-4da49348df8mr218164391cf.30.1759148574412;
        Mon, 29 Sep 2025 05:22:54 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-36fb4773451sm27480261fa.11.2025.09.29.05.22.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Sep 2025 05:22:53 -0700 (PDT)
Date: Mon, 29 Sep 2025 15:22:51 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
Subject: Re: [PATCH 1/6] dt-bindings: remoteproc: qcom,sm8550-pas: Add
 Kaanapali ADSP
Message-ID: <go2koxtabrktc2noyrgehgeddavvsdz6qu6bnwkzqtnb2k4du5@3m5le25bfmpv>
References: <20250924-knp-remoteproc-v1-0-611bf7be8329@oss.qualcomm.com>
 <20250924-knp-remoteproc-v1-1-611bf7be8329@oss.qualcomm.com>
 <h4lk5psnwx3ma3um2sozhcdccwhmgmbje2lgjks2czcrzn4mre@svtnbyzvrivw>
 <d374036c-1263-42f4-b9ae-13b21427b01d@oss.qualcomm.com>
 <maeobo6qukgzn3acwtvhfrvwrfwo4q5pzspem6htbybr5xuwlm@opagojsav6ey>
 <4a25e085-39f8-49dc-85c6-7a4267689dd1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4a25e085-39f8-49dc-85c6-7a4267689dd1@oss.qualcomm.com>
X-Proofpoint-GUID: eW9eJTqDy3rpIQY4vS5DC2aN35KCHAm0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxNyBTYWx0ZWRfX5qDPLoY65J0s
 cmK/IXr5VSwaAPKnMA636/ibr1fkxV2FziiTjho7yo3RUJf8O5RXCF+kB1QNBVuxn4Pv21EkeST
 lrHrThvI8qhgV9bb1RXKmzonEY4dtXho2gMwe1obEsecblve9HvZeDU//TU5i9ZI6hP0lviwb2k
 vFTq6jWCOzui5K7SSrs8WRJZQtSGh1gXxZVHgIpFmTOSKxCLYJSq/i/c0YYHIJH/dAID6Nxdmbi
 9MMiKaT23rbUAh9baHdzyTUarMqv3ekzwi6ydQdqlg1PJbDR7MawfCQRV1JL4RG2adY6I53nu87
 YM1Ofr82BMMsZ8L2enIFIaKjnMeMWmo+CxPf6LMf9qv8iNlrZQa3ItQTcn1QCQ2MG9yMHCLbZgC
 cDSa+8u3QPGVHFa6YAfdZiJpYC5dkA==
X-Authority-Analysis: v=2.4 cv=IeiKmGqa c=1 sm=1 tr=0 ts=68da7a20 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=f1GoqXBgz2vLpE21Uj8A:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: eW9eJTqDy3rpIQY4vS5DC2aN35KCHAm0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-29_04,2025-09-29_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 suspectscore=0 spamscore=0 adultscore=0 impostorscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270017

On Mon, Sep 29, 2025 at 06:11:23PM +0800, Jingyi Wang wrote:
> 
> 
> On 9/29/2025 5:39 PM, Dmitry Baryshkov wrote:
> > On Mon, Sep 29, 2025 at 02:06:11PM +0800, Jingyi Wang wrote:
> >>
> >>
> >> On 9/25/2025 10:19 AM, Dmitry Baryshkov wrote:
> >>> On Wed, Sep 24, 2025 at 04:37:22PM -0700, Jingyi Wang wrote:
> >>>> Document compatible for Qualcomm Kaanapali SoC ADSP PAS which looks fully
> >>>> compatible with SM8750, which can fallback to SM8550 except for one more
> >>>> interrupt ("shutdown-ack").
> >>>>
> >>>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> >>>> ---
> >>>>  Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml | 6 +++++-
> >>>>  1 file changed, 5 insertions(+), 1 deletion(-)
> >>>>
> >>>> diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
> >>>> index 2dd479cf4821..be9e2a0bc060 100644
> >>>> --- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
> >>>> +++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
> >>>> @@ -28,7 +28,9 @@ properties:
> >>>>            - qcom,x1e80100-adsp-pas
> >>>>            - qcom,x1e80100-cdsp-pas
> >>>>        - items:
> >>>> -          - const: qcom,sm8750-adsp-pas
> >>>> +          - enum:
> >>>> +              - qcom,kaanapali-adsp-pas
> >>>> +              - qcom,sm8750-adsp-pas
> >>>>            - const: qcom,sm8550-adsp-pas
> >>>>        - items:
> >>>>            - const: qcom,sm8750-cdsp-pas
> >>>> @@ -95,6 +97,7 @@ allOf:
> >>>>          compatible:
> >>>>            contains:
> >>>>              enum:
> >>>> +              - qcom,kaanapali-adsp-pas
> >>>
> >>> This one and the next entry are redundant. Do you see why?
> >>>
> >>
> >> This one describe the interrupt:
> >>
> >>   - if:
> >>       properties:
> >>         compatible:
> >>           contains:
> > 
> >>             enum:
> >>               - qcom,kaanapali-adsp-pas
> >>               - qcom,sm8750-adsp-pas
> > 
> > It's still redundant. Don't you see it?
> > 
> 
> sorry I didn't get your point here, could you explain more?

For you device you have two compat strings, kaanapali and sm8750. This
schema block is covered by 'if compat contains sm8750', so you don't
need to add kaanapali to the if-case. You already hit this check thanks
to the fallback compat.

> 
> >>     then:
> >>       properties:
> >>         interrupts:
> >>           maxItems: 6
> >>         interrupt-names:
> >>           maxItems: 6
> >>         memory-region:
> >>           maxItems: 2
> >>
> >>
> >>>>                - qcom,sm8750-adsp-pas
> >>>>      then:
> >>>>        properties:
> >>>> @@ -185,6 +188,7 @@ allOf:
> >>>>          compatible:
> >>>>            contains:
> >>>>              enum:
> >>>> +              - qcom,kaanapali-adsp-pas
> >>
> >> This one describe the power domain
> >>
> >>   - if:
> >>       properties:
> >>         compatible:
> >>           contains:
> >>             enum:
> >>               - qcom,kaanapali-adsp-pas
> >>               - qcom,sm8550-adsp-pas
> >>               - qcom,sm8650-adsp-pas
> >>               - qcom,sm8750-adsp-pas
> >>               - qcom,x1e80100-adsp-pas
> > 
> > Likewise
> > 
> 
> indeed, here is redundant as "qcom,sm8550-adsp-pas" is added in
> the dts. I will remove this.
> 
> Thanks,
> Jingyi
> 
> >>     then:
> >>       properties:
> >>         power-domains:
> >>           items:
> >>             - description: LCX power domain
> >>             - description: LMX power domain
> >>         power-domain-names:
> >>           items:
> >>             - const: lcx
> >>             - const: lmx
> >>
> >>
> >>>>                - qcom,sm8550-adsp-pas
> >>>>                - qcom,sm8650-adsp-pas
> >>>>                - qcom,sm8750-adsp-pas
> >>>>
> >>>> -- 
> >>>> 2.25.1
> >>>>
> >>>
> >>
> >> Thanks,
> >> Jingyi
> > 
> 

-- 
With best wishes
Dmitry

