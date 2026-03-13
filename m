Return-Path: <devicetree+bounces-275422-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CNSyOd45tGl3jAAAu9opvQ
	(envelope-from <devicetree+bounces-275422-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:22:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C110286EB1
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:22:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 50A6131DE033
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:19:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5705A3C5555;
	Fri, 13 Mar 2026 16:19:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ix64suS/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Pk7K//sH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA80B3C5DA7
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 16:18:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773418740; cv=none; b=uj0FLkfdlBfgoRmqpHuq3oLU9KISwpTDSRFpSdp3uZmjkEri+0AF7I2X6hC5Rxp4xW/Cd9M4gJUo+u8iz/fQzP+SL1MUJIRwzT8+RC4hAtC2ZH83Cb7CbPoMsJcWsy9K3nFSQCqivCymXyMchNNrRHu3QNX5NAQFi6Nw4gYxOdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773418740; c=relaxed/simple;
	bh=LFGN8b/UN+R3YGgYN2Kc7zmaiBg8kLu7zVUTimW8sZo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o9DC9n+Z68IxCrkFC/01LTdr0JKhFVZLmHRLcTyBFI9gN4rRN6y/odttPKAEDHvicabxaKD0WtTxpj72vzBT+xOfltkUlzz+ySaP//GwM1PnyuSTHTKsdBI6+bY524zk1Xa6xuQ8RtaIDWhhmOV4R/o3JQ/cTE4JBaqnlucyaPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ix64suS/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Pk7K//sH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DGHZ5d481530
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 16:18:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=GQjuBix6iYhCQlMb6tgr+32J
	f059Qtt6VAlaGOemask=; b=ix64suS/x1LtCZ8ezz41H/xXF6ASxuDRqS7OKyBt
	XchRVF9Q/eQC7PGjKNTLA2C+/wUSWD17PLHSbx4irfnM5vUrSy/8/Vs0JE0P4Q45
	3406gCrtjfAJs6o9NLZmRtaJ0/VQ0CBAsVS978L9NcRnomNGzf+La55jc9PBjhrH
	HNPzeF3hvSA+WbccPlvfPDzJTx4OZmpDNe+ug2CYgExd4F5BuN0kqHbRL3QccsCt
	p+LKhIwC94/FxN0L1s389X1vYeX6PssCtmPEhUEhwEnw6XEDFANlXMwIdyai2N56
	BR9EWmd9Z/6LtnAjI9strimOQHcWCkT0r0KM8u7W/as2iA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvfh7sh0m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 16:18:57 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb52a9c0eeso2197267185a.2
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773418736; x=1774023536; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GQjuBix6iYhCQlMb6tgr+32Jf059Qtt6VAlaGOemask=;
        b=Pk7K//sHSKHiUHHn60LD/0sSC2r5BQXE0HLB+SFa5YwOmW51uH3pYfFWeJ+G1FE7fV
         3B1Tm0ypQZsaA+G89mN/bjHZU7qzVgwIhlfF9DmNGFtlyEk+5HP6ChfAyg+Pbtc2RtTu
         eraHrJ3w04T96+BKB+QaxB8C2ZnUNIvTA5NiftOMYyY3ppoQEh37HyOMEOVqpflb2d2i
         A1esBs1vtYUZ3hSvqkgKbAHidzZXoMfUBSRUGnzPnmi7/9xKBRY/WyiU30rQ7Wc+nEeK
         53Pnvp+twW91Y5a8LeEw8n/udGGyS3RKGfyITIb04GUNN3PkeYt9hslgFkQtkD4PfOWE
         nqzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773418736; x=1774023536;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GQjuBix6iYhCQlMb6tgr+32Jf059Qtt6VAlaGOemask=;
        b=PJQfTQhwna2raiLagBZ+HRBP5uRts0Er3KuBT0VKCQbAsx/nLXCMNWVr/NX2HoyfA0
         mPruR6gB+xwfsy9eDRsIr/R0WjpDZvi/4oJ2sikTSvm18DItiRpx0TcJx3rJIK19JhX2
         se9PgB/4xIfv+Gn7gKFwzeEM+iHr05HcdXfYG7trtLKl6cifVA2UgKfhZRSn8M96LbRV
         e0K73BFDQ6Lj8MngOrdUf2eChKpCTmMn0f20U0CiJolkX1ldrpnlKVwgeCtZzwDCfOiK
         uJGXCufnO7DGfHcjVQCUQFCjf6g/F543Z2kYqVsZKPtLE4FVoa2xRlsA9/y6MRtTE9Wm
         2GLA==
X-Forwarded-Encrypted: i=1; AJvYcCXodcCHU9XtuCVW5S20S9a5SjwbpSskl6DaQwh7DTQusdL0352tKOPuwpZ7t927uyaTox2+oWlNfrCO@vger.kernel.org
X-Gm-Message-State: AOJu0YxPzi+BColGDKwMiNfV0gxLBFEU7MEq7ZFvG5oMANr3GvRQPBZI
	o5fUt7+y7/f7ROeKQDtCt/adqdMiAa0k6jmUPromkFpywAdn4O/MCJZ8pmKHvgHRmfcPwukmQ9z
	16z/ATFas8jco/BNyEjDreiODPSMLjJic6HQJbZSf1O51dMJt8WP5KtQyHKxWyr3c
X-Gm-Gg: ATEYQzzbRf9sIq4imeTzBZKta/EJhVEpJsp8YClepGvWd3f4jZ/VEsiCAqlQ2cwTPXG
	f/Nim5rw/t0HLxxUQ0fkZSFyS51y4ZlOorIwDVsELXVeconmdW+0ewtIsOqtdrUgKf1HFXGQsZS
	twPFJ5a60kEqfitze6Nl341pjFYH6TVhgplxAd+vlBNMiz/+WZAxVfW1ODMlRvGhRazJkTx2unD
	2zf28sOyD3dhxl84Y3Jb0GADERJGd6Dz8OhU2dEY9FIsHQbroe/rpgh2ZcQ0jZGA8ZVLIuwFXvQ
	ZVn5ZqltT3toHcLmv+6SWmGz3pJ+hgmdTLv/luIl1AeV18jnoQo0iFzI0WbYG+r0dSESrCawYTy
	9wBW5N+RQA6P+e35SOOAKoAXhPq2jmmP34rRkiVNzj4MPW7Y0ABciUkE6EEiK3g+v0yx2xNX2IV
	6x+YEqqmnI8Zin+LbfYjgGPu7I8WbosF3NP+g=
X-Received: by 2002:a05:620a:4493:b0:8b1:ed55:e4f0 with SMTP id af79cd13be357-8cdb5b5b043mr496054385a.39.1773418736239;
        Fri, 13 Mar 2026 09:18:56 -0700 (PDT)
X-Received: by 2002:a05:620a:4493:b0:8b1:ed55:e4f0 with SMTP id af79cd13be357-8cdb5b5b043mr496047785a.39.1773418735704;
        Fri, 13 Mar 2026 09:18:55 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a1563775a2sm1598057e87.89.2026.03.13.09.18.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 09:18:54 -0700 (PDT)
Date: Fri, 13 Mar 2026 18:18:52 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 2/4] dt-bindings: i2c: qcom-cci: Document Milos compatible
Message-ID: <jexys4ypbizesa3whuvtq36t6hpqm4httlbwtzkulz5pld4yul@lf3joaistvfb>
References: <20260116-milos-cci-v1-0-28e01128da9c@fairphone.com>
 <20260116-milos-cci-v1-2-28e01128da9c@fairphone.com>
 <20260117-obedient-galago-from-eldorado-8e0ba4@quoll>
 <cb2430f2-8601-4c72-af6b-10f1ff16c188@oss.qualcomm.com>
 <DGDV2EMXHDS3.2377AQBNDDHAV@fairphone.com>
 <DH1LC0C4QD0Y.1XKV1PWFCBQRN@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DH1LC0C4QD0Y.1XKV1PWFCBQRN@fairphone.com>
X-Proofpoint-ORIG-GUID: I27M9giERRwcrBDhq_imI_M0q2ENXB7g
X-Proofpoint-GUID: I27M9giERRwcrBDhq_imI_M0q2ENXB7g
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEzMCBTYWx0ZWRfX0qUxdJTS3snK
 ZeKP8tamCqG9nOshGGKClNQ62SYMLJpJ36Ds5YQx9wZRv1v0QbZDbuLoHxPKe1GVXYYnxyusaJN
 DFaexqgzp1pvZcKxjiWQIURRyEnq9eXzn+aWnlGBsJwfVlVeVUTEFoKu5dmk/LMWUzspPeAAFjH
 MA23oPIZSwn4UV+dpeCh00XMO+pYaba79up3nrB7b7SIh51DvPsVyJatad0dsqv+Qm5Q1StmjlO
 X2dtFxaKLS1KFKwRRZ1UW3JdnhUIsc4nW8igrCduUo38xh4hnMNsLH5otnyf9b/uIg3XIXDq6J4
 ktmyNMLjR9Dl62njbZsS8rBgRMmRxmrLJSiFtvaNAwlxSkV7iSMS5ARPpA54l96nvojPGxb8J/3
 L58ShN2UOFRM91MRbkrEKTSDchuk7PxwNxm7bII2TRYPiu8pwOfts8u5ohsd3D12CvGcBN1YPfC
 7aiIxqwDJY860wQPJ4w==
X-Authority-Analysis: v=2.4 cv=BpiQAIX5 c=1 sm=1 tr=0 ts=69b438f1 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=6H0WHjuAAAAA:8
 a=9zw7OpybwPviLstg948A:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 phishscore=0 adultscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 bulkscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130130
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275422-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim,fairphone.com:email,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4C110286EB1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 11:43:07AM +0100, Luca Weiss wrote:
> On Fri Feb 13, 2026 at 2:16 PM CET, Luca Weiss wrote:
> > Hi all,
> >
> > On Tue Jan 20, 2026 at 2:18 PM CET, Konrad Dybcio wrote:
> >> On 1/17/26 12:54 PM, Krzysztof Kozlowski wrote:
> >>> On Fri, Jan 16, 2026 at 02:38:56PM +0100, Luca Weiss wrote:
> >>>> Add Milos compatible for the CAMSS CCI interfaces.
> >>>>
> >>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> >>>> ---
> >>>>  .../devicetree/bindings/i2c/qcom,i2c-cci.yaml          | 18 ++++++++++++++++++
> >>>>  1 file changed, 18 insertions(+)
> >>>>
> >>>> diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
> >>>> index a3fe1eea6aec..c57d81258fba 100644
> >>>> --- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
> >>>> +++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
> >>>> @@ -27,6 +27,7 @@ properties:
> >>>>        - items:
> >>>>            - enum:
> >>>>                - qcom,kaanapali-cci
> >>>> +              - qcom,milos-cci
> >>>>                - qcom,qcm2290-cci
> >>>>                - qcom,sa8775p-cci
> >>>>                - qcom,sc7280-cci
> >>>> @@ -263,6 +264,23 @@ allOf:
> >>>>              - const: cpas_ahb
> >>>>              - const: cci
> >>>>  
> >>>> +  - if:
> >>>> +      properties:
> >>>> +        compatible:
> >>>> +          contains:
> >>>> +            enum:
> >>>> +              - qcom,milos-cci
> >>>> +    then:
> >>>> +      properties:
> >>>> +        clocks:
> >>>> +          minItems: 3
> >>>> +          maxItems: 3
> >>>> +        clock-names:
> >>>> +          items:
> >>>> +            - const: soc_ahb
> >>>> +            - const: cpas_ahb
> >>>> +            - const: cci
> >>> 
> >>> Same comments as other discussion these days - I guess that soc_ahb
> >>> serves the same purpose as camnoc_axi, so this is just last entri in the
> >>> if:then: blocks.
> >>> 
> >>> I really find this binding terrible - around six names for AHB - so I do
> >>> not want another combination...
> >>
> >> I dug up the CCI doc, it talks about the CCI having a CC_CCI_CLK clock ("cci"
> >> here) and a CC_PBUS_CLK (AHB interface to the rest of the SoC).
> >>
> >> The CAMSS TOP doc (for Milos specifically, but I would assume there's a
> >> pattern) says that for access to CCI_0, I need to enable CAM_CC_CPAS_AHB_CLK
> >> and CAM_CC_CCI_0_CLK. CPAS is a wrapper inside CAMSS that contains most of
> >> the programmable IPs on there (notably not the CSIPHYs, at least not on this
> >> platform)
> >>
> >> It further mentions that GCC_SOC_AHB_CLK is required for *any* register
> >> access within CAMSS. Perhaps it sits right in front of the xNoC-to-CAMNoC
> >> interface.
> >>
> >> This only enforces my imagination of CAMSS being a fully contained "bus"
> >> (perhaps somewhat like AxNOC on 8996 represented with a simple-pm-bus)..
> >>
> >> +Dmitry, myself and a number of our colleagues were deliberating how to
> >> best represent the hardware going forward and I think we at some point waved
> >> the idea of putting every camera subdevice under a "camss: bus@ {}"-type node,
> >> which would hold the reference to the TITAN_TOP_GDSC. This seems fitting for
> >> housing the SOC_AHB clock as well and therefore concluding this discussion.
> >
> > How can we continue here? What change can I do to unblock this? I can't
> > tell whether soc_ahb == camnoc_axi for this platform so I need some help
> > here.
> 
> Any feedback on this?

I went on and checked. No Milos's soc_ahb != camnoc_axi. They serve
different purposes.

-- 
With best wishes
Dmitry

