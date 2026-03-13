Return-Path: <devicetree+bounces-275040-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SJ0CNrbSs2l5bQAAu9opvQ
	(envelope-from <devicetree+bounces-275040-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:02:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D36D280220
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:02:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5DA663042890
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:02:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2A203815E1;
	Fri, 13 Mar 2026 09:02:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JgJPKrCL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fwuMZTrV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A433633D4E5
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:02:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773392563; cv=none; b=nIgCskb6VNLkBQ/WUX+e8nw7PXomw9dOwCrSbQZIt8SvbkG9DYDb6oGZg1KSE1RHVp2oTVYUcjNRQRx7b9c3T/UuP4Cmhv7K+U5mnW0mFLIR1YvBDAg0xVeK8EqXGtRjMOKnh+VscFU5VXIJ7ZjfNSO8EpDtgu/J/2PrwJU6hEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773392563; c=relaxed/simple;
	bh=uwccE8UVIz1WEPjdu6fhZMBvTKVUMDpZdAYEGlLrbXk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fMCgt/kUW+0JGyscWSA/rnyWHBOhmYHRvSzB4yvEmEXrzTgRB2bRosSdHrMB8bUDdUZqJsZprNnea21GVY4N9pz9/d+53+BdaTp2eMxfoybxlKZXeAUQ+21x95ojJEOQolcdcFLAyGNR1K2zlJi0CbqmTEzCkrXM60uoR7zTXlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JgJPKrCL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fwuMZTrV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D5tiSN1176661
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:02:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ZIsX3ZmUvoJ+WJUVXUFNdaHX
	BzaS1DByqfbddo2c0q4=; b=JgJPKrCLQswkTxhCDAcna6Ja0mndU6vDz+q7kkEZ
	TYnRnCLwXn1I3D6Caj8IhVWr+M5d30JBJcwzUBWDeFumdT65uZt2HdJc4zRALGHU
	cKIbVavS3x9IW1T7JQrok3R4xbsC6NSYceIF1AnHdnykS31MXWfp0V7kSiYpVbl+
	6Qt7WP1ApcvKl94Z2HloR4cNzyf25lQeWghZzqru2bFVpuLFxFB85Qt8SleVDrY1
	/AJK/kM12mr+X94J4ACcSevy6uR152Hr3POMzo+OEgfMaavkt7wPPXvAXKDb/u4+
	nzvBYAUZAwlrQbF5BRGfNr7hq4VeO5/R8k62CoPqncnhTw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cumvqcsd1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:02:41 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd781c0d90so1677050985a.1
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 02:02:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773392561; x=1773997361; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZIsX3ZmUvoJ+WJUVXUFNdaHXBzaS1DByqfbddo2c0q4=;
        b=fwuMZTrVnlaHQ7pDY1tP0mtlOTp+MZcsW3wo9iK1S+Z7W1hV7oMeVVGeDhHLfwKQde
         lPIFrmDFFOY5GeM1KSFrmh5qBdHzn0RN3lne/SbTKwvAMERpxjzLmzyD7zsewzPNiR+s
         ZAcvZmKjnSOX1UESQKtQY1b7b0UzODzuoVJfsASgTgPCyWV2Oayop3o/L7b65Jq5BD6Y
         crbIBQisvLQkzTyRmj4+s6hfKcxY9QSN/UoBA+oJwQ0o7+hWi1hVnXUm+x9nloI46MgA
         bo9Qlluv/Tkcqse5n1I4FKkQdpCEUFlTJR1Hv0VsRhJGcV6zrAWC5PWuQlQtayjI5WdZ
         mLQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773392561; x=1773997361;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZIsX3ZmUvoJ+WJUVXUFNdaHXBzaS1DByqfbddo2c0q4=;
        b=TiTQSxPoYKvJQQ7L+TitceYxs+Hn9OJrKTzELN9/O+ckxqQgiPdXROnM2iTCvb7w2u
         Fd40BczOmp/3LJtoJ6A/CZUKVJJOzaNL58nSyr6JBLvo/Uo006Q21Inc67cQxdimsam6
         /Yi8hucUY3wxWgOH+TPKk1PGzDnnCpts2RkjIwi+i/57PEHfwUQELYhtZ3B1xwEahJQa
         r0Vmz/sAQbYAVB+kXELcPg4GvsulGbM0p0fu9vYQn0dYEzQSpPiGwYh760Op5Gj8CiPM
         OsoWgEDsbTrnK/ZPyco+Xj1ob2llqzz8rkYNxZ4m4AXGgdegVsYZaOXeCcuFXAwISRYQ
         oGfg==
X-Forwarded-Encrypted: i=1; AJvYcCUH+tF3bpzBwuWsQbV6ZFfoARw5jhnnz94uH4+P2fRW8NKJI25UwZL+RCbtFn0T1Ak/JRmolAJiGKMM@vger.kernel.org
X-Gm-Message-State: AOJu0Ywb4gFlqr+kRoGsCqlnD+oNTehbie+oD6kDHThtJJRNvHTUFHFz
	Ap/qinEWkHct9jpCKWUIe3j4ixQNJS3MIRhCBB4Ndsajkrlrld9Vy18y5T2RLHmEg4hb4SMnDxs
	eayKakncqF+d1pwh0fvQK2M3xVyF1WveG828Ubty/UYT/RSwXb/GpI3zU6yfnyOmt
X-Gm-Gg: ATEYQzzj7NAT9aDegEBDje6VWaYH1wUtRs/dl/utqz8/2x6DK1d3fkyMHviMh0X/Ypk
	ZbDNcRuES834HXVbDA9IeT4/dHVzOR3P3u2+QhoMYuybzbblGyl0MnzJ3N0Y/I1Bf+I4vfN+Zen
	Aho11LZKy4CFZleCJs0zC3Q1Eew0pP7xDmzt3fxJVIxVwmOHTHYfD83UqIdQVX91OcjSW7CkkfT
	rlY/8ys81Zvce5Rh1qSbWiSwKmGwr9M0jg9xMCCrfWBW6hJMXQN21wgvmgXYb88CHA/qv/kBrV4
	UMheGJJ3YwhGzYsJIpcAiKHRus5126ZHSgNw+mf/zT2WuCaqYrNVTl90FSkb7OuR0xFFyScqOQ8
	ClQa+jXcTkmyVCGwahCUkxYjkVlj334HfAQ==
X-Received: by 2002:a05:620a:4694:b0:8cb:4d46:7a6e with SMTP id af79cd13be357-8cdaa7a1804mr764061685a.10.1773392560693;
        Fri, 13 Mar 2026 02:02:40 -0700 (PDT)
X-Received: by 2002:a05:620a:4694:b0:8cb:4d46:7a6e with SMTP id af79cd13be357-8cdaa7a1804mr764057085a.10.1773392559987;
        Fri, 13 Mar 2026 02:02:39 -0700 (PDT)
Received: from oss.qualcomm.com ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854b47145dsm191687295e9.0.2026.03.13.02.02.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 02:02:39 -0700 (PDT)
Date: Fri, 13 Mar 2026 11:02:37 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: spmi: qcom,x1e80100-spmi-pmic-arb:
 Document Eliza compatible
Message-ID: <w3idoxau45e5g3j3zqboduw2qiz2s7uvwko27y3z3ue5yxlzxm@av4ksryhjnxj>
References: <20260311-eliza-bindings-spmi-v2-1-12783c6759d9@oss.qualcomm.com>
 <9b8ea7a8-80bd-4aba-89c3-6dbe9d43c41d@oss.qualcomm.com>
 <20260313-happy-pristine-galago-2a5a3f@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260313-happy-pristine-galago-2a5a3f@quoll>
X-Proofpoint-ORIG-GUID: IRVqC3q-KrFwFj_sRKLZdWtRlcvCGHIH
X-Proofpoint-GUID: IRVqC3q-KrFwFj_sRKLZdWtRlcvCGHIH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA2OSBTYWx0ZWRfX/UNf5fHdtqie
 hKtBuBykSmJUESiK8d43mKHnzqMLEkwXBo35Zc4AnjZXl/FmyALGkJPiLnM9xMmc3g5/Cexk+OI
 +/3AP3MBNqGz7MKtWd+ePMjrshHfx1wsHgOD9guSzck7kCH4OH2CvX0slVZOOLiSK4zxliChJsf
 H/gSpr4NYnuJB31VzsmyCH9lbWbvlNbFb5uGx7yu0k3R/2UGvdw/qsIu9glOKJf4UgTZ82DTIlY
 Jg9dqL3Vb0Z0tOyc2hiakRgx6aMviBlepGnti2ojSDpS9/PeQnJ3FNwnkx5HjTvPG1WWFdPHYtp
 E8+Ef1GMAj0Zazoq0b+YBFcE/2omBNr7wHCF6s4C3BdhGEMz0AdLmcvTI7rNoKNqYqdco4xVOI1
 J6Ykc2MRWkbdLrYIA7k86xYKLjiddcGiAfLfJmmc01g3EFtBKc+6PEh2hhfm2vAKW2Ckd+l4/mE
 oSkV46h3Yl9ymU1k+CA==
X-Authority-Analysis: v=2.4 cv=ccHfb3DM c=1 sm=1 tr=0 ts=69b3d2b1 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=F0_lbFdFp-naUQYOxWEA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_01,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 malwarescore=0 suspectscore=0 clxscore=1015
 priorityscore=1501 lowpriorityscore=0 spamscore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130069
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275040-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,msgid.link:url];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9D36D280220
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 26-03-13 09:34:34, Krzysztof Kozlowski wrote:
> On Wed, Mar 11, 2026 at 02:43:27PM +0100, Konrad Dybcio wrote:
> > On 3/11/26 2:29 PM, Abel Vesa wrote:
> > > The SPMI multi-master Arbiter found on Eliza is version 7.2.0, yet
> > > driver-wise, still compatible with the one featured on Hamoa (X1E80100),
> > > which is 7.0.1.
> > > 
> > > So document the Eliza compatible and allow Hamoa one as fallback.
> > > 
> > > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > > ---
> > > Changes in v2:
> > > - Instead of reworking the whole oneOf for compatibles,
> > >   add Eliza similar to sar2130p.
> > > - Link to v1: https://patch.msgid.link/20260311-eliza-bindings-spmi-v1-1-1a20eec1179e@oss.qualcomm.com
> > > ---
> > >  .../devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml          | 3 +++
> > >  1 file changed, 3 insertions(+)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml b/Documentation/devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml
> > > index 08369fdd2161..4152469b3880 100644
> > > --- a/Documentation/devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml
> > > +++ b/Documentation/devicetree/bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml
> > > @@ -23,6 +23,9 @@ allOf:
> > >  properties:
> > >    compatible:
> > >      oneOf:
> > > +      - items:
> > > +          - const: qcom,eliza-spmi-pmic-arb
> > > +          - const: qcom,x1e80100-spmi-pmic-arb
> > >        - items:
> > >            - const: qcom,sar2130p-spmi-pmic-arb
> > >            - const: qcom,x1e80100-spmi-pmic-arb
> > 
> > I think Krzysztof's comment was meant to suggest you shouldn't add an
> > intermittent items: entry for a single const (lone-x1e compatible), instead
> > passing:
> 
> Yeah, you added unnecessary line "items". Your hunk was CHANGING a const
> into items+const, so I asked not to change that. If I meant the enum,
> then my comment would be under enum.

Oh, my bad then.

Will respin with v2 changes but the items dropped.

Thanks for reviewing.

