Return-Path: <devicetree+bounces-277323-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kFCfL0TGumlobwIAu9opvQ
	(envelope-from <devicetree+bounces-277323-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:35:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2796A2BE536
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 16:35:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 58851319CAB2
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:12:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7D8C3E1204;
	Wed, 18 Mar 2026 15:09:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eDv+zGyf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AdOuw30q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF9A43DDDAE
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 15:09:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773846561; cv=none; b=XTlRhizTDS8QwK5pO807X7ioAFz9lDuMJnkl4F07gCsSAm0aIKOCZuPkA4aa7Z/4s5s25XkJqO1xI8tTEuyEjFep3uvNFEG7m4ZwiM5OXRtdviAuHUEjpRvleDK+8E1jdgqAVPpC1STsRH8teX1XDQ1c/V0cSaLsztnX2S+nnvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773846561; c=relaxed/simple;
	bh=8h8t6L7UJjnnHh7DNAu+XCYzbbspRqmakJ0a75DIRUQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=URl/oJNc+u3y/Vlh9M8Qxt+IhmrNrz0fVDHKcB8b39eZGyNzz4aTH84YaJzkedXW2IIqnRfllRYZrDymCD0ybJ8NKSl6FS8WSDeI2/JgZviwY3QuHI9gHgyifaeuKK8FZsHmy+UbYRJOCXTFLcLCpyJKsJREF9dSiWk2LV/maK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eDv+zGyf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AdOuw30q; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62IEKa3v1049628
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 15:09:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2Cn9ilx/3avZr+kRHosYvMle
	e1f782wzMh3Ai7wZ5uE=; b=eDv+zGyfQIybJnDMGPzj/6Ur29oA61LabHaC3hN4
	I0odNdjX7L6xUSgiiq69ZyqtmofBZxaBjHwR81WMuY5x65Vely3egTzdm8K3K5SR
	p8Q/+zZEyINItmriILocmPsSA3ZuSAYeC4wsga6tNNiQ2OVR5Eu+0FotzHrXK18A
	fcajoAq4ffox+XdGQPLOLFu2+BEjiJ/W0KKNDicXeb7xdyZTx3iaPW1bm2QNy0sq
	InSFGmjg5imq/vHk+xl7F5Uedn42/EkhRFI1iBWYzq+lez7oMoXzhcw5D4vilW8p
	bpQTIz+B/4dK2KL6sweyce0blRRrrZ2Lf9xTHqgv3eC3ng==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyj4ek2bh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 15:09:19 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-50921f7da67so87466511cf.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 08:09:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773846559; x=1774451359; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=2Cn9ilx/3avZr+kRHosYvMlee1f782wzMh3Ai7wZ5uE=;
        b=AdOuw30qkouaY9Gx/6qC0WUY0KhiJEq2E1NANyrXFqj4VJovR92hTvmTdlatWopu/6
         BH/T5C2Jb3XzxEoYl49CTIZ2vv38TlGGBsU4PaBxZlZd+fdvrL1xvKbCJ2G3HHNKqfPP
         Y0H7vsD/QyULzllHIAU9EzEhif7N9zaQOP611UHhupIvGsapGfswLI//wnN79/P9zJCb
         Y+e1Aq6cav8c5iSFZHOyB2EhWG8mDVk/ZpMzbHaVOOvD4psdp/4zDBSV3AKPNYcYPkGH
         AoH8CoRPp3RBEaToYApT2mlehNP2YwS97Hi2EPddtUGxtB519L7Nm+VP/9tkM7a7MO2+
         zTZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773846559; x=1774451359;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2Cn9ilx/3avZr+kRHosYvMlee1f782wzMh3Ai7wZ5uE=;
        b=L8XeeryXVj5zUgPs7UQLjDSQvDR4JF2aMx4zy42zIjjRdOIdLoW5QHCCs//dW4Immc
         QnSZyHHGQW8O5SusVfDFTbJloqzc28JP+5nM9HZk6xLiMCKb+4R/VAsiC0nvhzaJwH4i
         kz+o42ppj63ozy/BY8ZUW66mwrzmlqH7Wde/CkhjBmAWOUk3cZk3Jk0NOFhA7V6tESJz
         VO53DccBGtudpkgrMaBt7RFoupEu3dSnH4/pY8NTRbl2sZDbwujDa8a+5OO7KrE0Q+ud
         0f728kvd9149xRP5Fpcb8ThoFCDyTGfqbblbiJ6pdbEbuxvFLfQkY3pHTh+QNcIRe7Su
         SOQw==
X-Forwarded-Encrypted: i=1; AJvYcCX2Aef6q8PCRXL36NBxvQYoPCG5SxMDTdlMmUdTQcupinabb2PlKFKxZjmiVT/5JHfvcJLqxVe9Xqk6@vger.kernel.org
X-Gm-Message-State: AOJu0YwirtMJ7qwEyF8Mgmr5JljRxAXk8AgWg1qXL5ETiAmHniBiLoks
	rQAdMCAK7SULgbiX9OELnkqppHlqUdNJNhwF+Mw21dx/+N1JTBejEuNrCtlHo6KhCBtC6YTgjAn
	+clvtrJc02fcbBlyeIeIdjQK8Xlby/2eKKV2Ll+jVMklziZiEhvQ/a12ARmJWhkKE
X-Gm-Gg: ATEYQzyHgkjnR2iyno5NIR3iEQoXB+h5nM7hHmcKQ485mwm1ddAy0tYrdb5JEQHPIbi
	8ePHBH7PXgCUvJks2tdSaWjv+B+fxcmh8kUQLAKcTVp0mp8DwpVv5oTZ8Y2U7v+upCbeyBT1+P2
	z/MZUwwtYX8tDLv/ij/keOqFoHLMUgDxfUm+oye6YCgwCInwzIN9xkoZ8eAhqTgbbe1p5RKWZHO
	n0yGpb98oOFL/1wIUQIecVkBRg3mVmY44ymTzdvCyy71i9iM7S3yGPAkhHaInx6uiH0vk1uMYq8
	GsGiCLQxdlfNdkv9GPH+tmm+Vk8QlO+VuYvc9lbP7ldT09+wXJ9EBN2UhZ4RzNe1USFTXlI34VY
	aIcIP0YZ0S5xh9svDpVQqpxA+0nZezyVQSgnrnUz67JQc1tE56Nj3qt+qtI2f1R8quVf8Jw3786
	rJ8swnwZlLTTVI+TACP8QU0FHCh3iNL9Hn4Ek=
X-Received: by 2002:a05:622a:34a:b0:509:2d8e:3eda with SMTP id d75a77b69052e-50b148818damr45454921cf.45.1773846558901;
        Wed, 18 Mar 2026 08:09:18 -0700 (PDT)
X-Received: by 2002:a05:622a:34a:b0:509:2d8e:3eda with SMTP id d75a77b69052e-50b148818damr45454361cf.45.1773846558375;
        Wed, 18 Mar 2026 08:09:18 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a279c27351sm609135e87.15.2026.03.18.08.09.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 08:09:17 -0700 (PDT)
Date: Wed, 18 Mar 2026 17:09:15 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: hamoa: Fix OPP tables for all
 DisplayPort controllers
Message-ID: <gekcz3b2o37z44h4xlzr2eo7ytewhtgtoyt3ifmizyhcl52sn5@xmowdspldxhq>
References: <20260309-hamoa-fix-dp3-opp-table-v1-1-1a8141d71f9f@oss.qualcomm.com>
 <taqh3ipe54cgjwcvyqnysg7dx56mweo7zld3jvmv6goq2vo4b4@ea7ksdyyn3dh>
 <sotoyaogawzdlazsbuubwdj7cuoolortj2lzxgs2reew76gkpj@vyts66j4hg2l>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <sotoyaogawzdlazsbuubwdj7cuoolortj2lzxgs2reew76gkpj@vyts66j4hg2l>
X-Authority-Analysis: v=2.4 cv=T4+BjvKQ c=1 sm=1 tr=0 ts=69bac020 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=nuaZ5ZqmnFVoJGL9zekA:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDEyOSBTYWx0ZWRfXwIlK6K9+76bk
 C5/8c85VHJDN0FSydTIT1Xuu72mR82iTdfQkJWAXeYHBZ1GNsBUPzPZFu9eZpdwLK+BjblhkvNg
 uEY2Mfzx9Oghfje+YvlhhXY/2CuJilTIyqu5PEr0ach2u3Yjk9S9ImNrf9qXs3dMHCdJNefmiiS
 Iq1Bj4mzlBMxjUsHIbvDVRHjuoRVqAUe4WCeE+g/qb3M1ke3YfbM3ZUucHZtk1Qoatp8oNIOi/+
 qDZeMnuLtaBKfO2SCoAuwicBMS3KBBHU4KxMRMhinGsERxHtTSEhEn4SO2lKpfo97Q0AfW9SMq+
 pdrhB4xLxdcp1H1i3naPm429wNT4tTRu3w+aALlLs2ezQA+U3nLFoKwhlZdW4d0aodV58NQNDvP
 PIqN2KLv/yj/K2xxfXiNCVUgDhaCJn4Ai3DfCAY1EVI31Fd72yf2BhPVrgRYbT7O9sm+85O3DwQ
 pheyoEW0b3FKHiKowuw==
X-Proofpoint-GUID: JpfPPK9lfJKtTREh3ZYLJ64o_Jq5vqAN
X-Proofpoint-ORIG-GUID: JpfPPK9lfJKtTREh3ZYLJ64o_Jq5vqAN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 phishscore=0
 bulkscore=0 priorityscore=1501 impostorscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180129
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
	TAGGED_FROM(0.00)[bounces-277323-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2796A2BE536
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 18, 2026 at 04:22:59PM +0200, Abel Vesa wrote:
> On 26-03-09 21:52:01, Dmitry Baryshkov wrote:
> > On Mon, Mar 09, 2026 at 04:44:45PM +0200, Abel Vesa wrote:
> > > According to internal documentation, the corners specific for each rate
> > > from the DP link clock are:
> > >  - LOWSVS_D1 -> 19.2 MHz
> > >  - LOWSVS    -> 270 MHz
> > >  - SVS       -> 540 MHz (594 MHz in case of DP3)
> > >  - SVS_L1    -> 594 MHz
> > >  - NOM       -> 810 MHz
> > >  - NOM_L1    -> 810 MHz
> > >  - TURBO     -> 810 MHz
> > > 
> > > So fix all tables for each of the four controllers according to the
> > > documentation.
> > > 
> > > The 19.2 @ LOWSVS_D1 isn't needed as the controller will select 162 MHz
> > > for RBR, which falls under the 270 MHz and it will vote for that LOWSVS
> > > in that case.
> > 
> > The list of issues isn't limited to Hamoa. As we started to look at it,
> > could you please also fix Lemans (drop 160, 270, use 594 instead of
> > 540, use single OPP table), Monaco (the same), SAR2130P (leave just 270
> > and 810), sc7180 (270 at low_svs, drop 160), etc.
> 
> For now, I'll just do Hamoa as this is the only one out of the ones you
> mentioned here for which I have access to documentation (yet).
> 
> I have prepared patches for all the other ones, but I need to double
> check the documentation, after I get access.

Sure, thanks!

Please ping me if there are any questions or delays, we can check the
docs together.

-- 
With best wishes
Dmitry

