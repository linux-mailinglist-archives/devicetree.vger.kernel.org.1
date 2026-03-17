Return-Path: <devicetree+bounces-276742-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0CxaK6VyuWm8EgIAu9opvQ
	(envelope-from <devicetree+bounces-276742-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 16:26:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B912ACFF7
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 16:26:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 43E44304644F
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 15:13:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFC253E95A7;
	Tue, 17 Mar 2026 15:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XOHlssc6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ETvQ8BRK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596063E9F93
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 15:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773760435; cv=none; b=I31/R1mB38kYX4fh6IS16apq2wZ6ukITuzF2B09MCVNeUboX87F77m4i3vrU55Y9G+TPQxwk7AFIjWIe92/qUc49zv4GPjPKD7eA+N5Zaq3klGgdI0Ss+CSTC+iiTO5OV/Xk9p5GjEaSSUZ2hH8++ZwaZO7S1THkRcin1dKagLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773760435; c=relaxed/simple;
	bh=wec1FX3qjL0/PjlJ8JOlvRhgBfgGgl2MNXHRhXkt5JM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UWEeZxtrDZguS0bk0L6hYrU5hXAz8seHaso/1syVgRMLGO/jlWpECxAES7yFcNMMZSRwG58pLjpXuZhg5yWSQTimryksX1gLRWdChpAzMgwF2BMHwu7TUcQgc7w9eKhMd0HSa5VNXLlqJSmu9vRSZRjYUIj+SpIeUCN4TAhEjcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XOHlssc6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ETvQ8BRK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62H99m1f2314569
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 15:13:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=M6sq/ik301j6e3VX1pELu4ww
	YfreTBx0zyG1GNp3glM=; b=XOHlssc6ADVjTZFrQw8kS0reg08geFl5cmIWoxUX
	irlHQOEGNJDA2f70F+NTZMqb1eII3TlqHbugRUi5F4buNEnSuVSXaU8fLRTRSECz
	BTnP2byqdxt72cj3M0JmThXFcQnedrwx+U0AnxyA4OVFu0SvwQsQpb6GVK0U9nfh
	8GCgh9ckgt5EYOND1gOogWJgkejQ8pE//M0SbZv8tvAhAWa9yKz7D5ihjVa9GnWl
	vZnk54vTMSW7wr5cPNobS/hYohfWidw2Xcdt0Npw6YTx466bJTWNKTfh2GGkQ1T0
	GNFhR0csR46IFNl4v8q9M0PPY++TJIahg8uFK8clb1YE6g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cxmf2cewm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 15:13:53 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb6291d95aso6344336585a.1
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 08:13:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773760433; x=1774365233; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=M6sq/ik301j6e3VX1pELu4wwYfreTBx0zyG1GNp3glM=;
        b=ETvQ8BRKNU3HTsQ3ihIN6zLyC6Ie2Gmy0sK/IBtvfeTkSzbSOsExg1Vqd3g3ecwLCT
         nXpAfFyh2bjQ7Ikyo5KFBi6Ye1zQmMUn6WZ14HvNZDvd4SaVGp/gT1SAx3CeJHnNpACq
         4Yzde9q/MjOilNycxJvxSQDA5y06I736eJv9NjS+PJ7M/1bAa4/fIyPM1YyfDbRJzoTa
         zToB3HQb8P7dm6eHWwxA5Uw16bysoPDu06s4mmL4kl5IzHB4XGMkd4GwnJVqvMjSX8MX
         Kub2p4S1/+YP7jwSDUWosDA8d3fZaYSfPCho2L1Bweas5xWPpRWPwrZujU4Y3qWjh7Cn
         RepA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773760433; x=1774365233;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M6sq/ik301j6e3VX1pELu4wwYfreTBx0zyG1GNp3glM=;
        b=UbcB0xC/GDdjltpcXQqxwns2TWcjjSiQsDwyjFASho1FUD4ug0edlu72Vmx3lrsmMV
         Ut7xnTyXFFxUB+m5JCaQWav5+3klgGBE0z8kTjjEqMKBNKX1FjoDG6qZx3it4BxCbAfG
         5t5klMLfdhmxY9guiCpcoMnlcd6iuaUCmFL8Bm/LsGNLJ/Ls/UPNycR4xDK603K68rSY
         Q4RKb2tDS5YqFMbQXbOL+/ISmF4urqgMJbJAT248FF4AO5qRscxjoEgkjpU8h1KklWyZ
         0zkdTvePwVxNDLNiIlpzJfBmJOQ1EAg2EGD7h7ifcE1i/MWIb2BiyV4UWpvw6SHALAfE
         myyw==
X-Forwarded-Encrypted: i=1; AJvYcCW0A80NzYe2G1RzQc2dsv300fb7BbC4/WWHSoKzkAsAQAzv7D3wW1ri9re+K+ggLlz/dA1BZEcSPgup@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5N0yIDSESkRD91XigiBCEd1zmMkRQtl+DawruKOpMr/AIFu4Q
	NYLwgizzpQ+5M7us1Isv43W+IOs/IPAZKkfZErfLFmTQHc+YcRQsepxw14VfY9uKdH4T3IsBpEQ
	ksx/bmFYA7Sbslmm5gAVK1xb69cpd6yNblsHMJcan0qJdywmFY0gaQWs0D1G2qY4M
X-Gm-Gg: ATEYQzwleYniKDZ1QWlUMtWCVCoF9nnjODtN8/zUsv5vY9gkDS7w70GLvuB9Kp1a/Ci
	oB0iOeUzte60Pcby1qIlfI276VSm3mjWQB5AzHh+VCSmOTIsV2yj5TW3Vwol+LU1kmHcAXmKESR
	OFI4se0b61E73usqyrhsnU0ipckLG3ZhY+Iph37EpPsUxpjSnU9dNFMr2tegLTq05uqkKHcdtqc
	4DHxDKkj/JQbHMdP2XcQ8XROpXxyAWAbIVKgMSortGUfp0EzeFV+JdgTi6NoxTcwZ46tLJhN2As
	BKrN43E0r+CTUa5QJB+35mZ+hc8DyYghRD7papcjaTY/x5WqCYTW+CruzlbMC1UY1QlKlH9HBVc
	UJ0bBA+dNz8Q3Ah0q6N98Eb/oh2/6N9Ye1B/xDLSv6Rm6fFyvSALQ+1KO72dXgqUCRaJ36ujPmL
	0tCSDeQhnWLkOoCVDmkkD/Y3Ylez+N4s5BDrs=
X-Received: by 2002:a05:620a:4013:b0:8b2:f0dd:2a97 with SMTP id af79cd13be357-8cdb5b5936amr2250549385a.37.1773760432731;
        Tue, 17 Mar 2026 08:13:52 -0700 (PDT)
X-Received: by 2002:a05:620a:4013:b0:8b2:f0dd:2a97 with SMTP id af79cd13be357-8cdb5b5936amr2250543285a.37.1773760432132;
        Tue, 17 Mar 2026 08:13:52 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15602e5ffsm4227206e87.29.2026.03.17.08.13.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 08:13:50 -0700 (PDT)
Date: Tue, 17 Mar 2026 17:13:49 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Harshal Dev <harshal.dev@oss.qualcomm.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Eric Biggers <ebiggers@google.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Tengfei Fan <tengfei.fan@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        David Wronek <davidwronek@gmail.com>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Melody Olvera <quic_molvera@quicinc.com>,
        Alexander Koskovich <akoskovich@pm.me>,
        Brian Masney <bmasney@redhat.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Kuldeep Singh <kuldeep.singh@oss.qualcomm.com>
Subject: Re: [PATCH v3 02/12] dt-bindings: crypto: qcom,ice: Require
 power-domain and iface clk
Message-ID: <7dqo6qbpwgltnf7xfgiogfdpb6f34fpwsxuksdpphjqjljzsr6@hwqv7wjarob5>
References: <20260317-qcom_ice_power_and_clk_vote-v3-0-53371dbabd6a@oss.qualcomm.com>
 <20260317-qcom_ice_power_and_clk_vote-v3-2-53371dbabd6a@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260317-qcom_ice_power_and_clk_vote-v3-2-53371dbabd6a@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: EajtAeU3Oz79AFj_8GeR6V3vSDLIw4MT
X-Proofpoint-GUID: EajtAeU3Oz79AFj_8GeR6V3vSDLIw4MT
X-Authority-Analysis: v=2.4 cv=FvcIPmrq c=1 sm=1 tr=0 ts=69b96fb1 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=o8jIPucMfvaqZjgiISoA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDEzMyBTYWx0ZWRfX/uw7hyESoau5
 wKQQ0X63JLSG+GAVB09FBZAoP1i+u526aI1iBhRMbw1dXd4mk43YN1KDR50KLK+RyblYf9NZfBC
 PG3kptBYWbSjZcvsRybzPQHX8QvS9fU+feI9gllnb4jHZCI8BPoKRuxBzwb7zR3tOQrJCEEPzL7
 DYle3GBbFa7FZLRNbhw5Iuhmxn0Ua7X32uY4wOVmWMM9mgrPqqhOSX6XO9OoDR9VppOaGLEYg2K
 qrs2VSN+LQe3wQWpksY7FGyX0gs9KJmTZIKE/H3ltJC5iYSgY1wiRuP1CwkM/rUs2tHxNxudUTG
 aGuX5RegjNVVcr2tWce2KQK2rqeBE0I24H37JlnBOjLuS3UULdVguXSL9QKDNZh/k1xnKDzPiez
 LyFpgI045x4CViqyQyXOG8CgogdYJU7Z1WB3MeJsLMn48XDr6lB1ojZeSFinmXWtSozHrniDus6
 S7FISKi9ms3Th2o2/FA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_01,2026-03-17_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 clxscore=1015 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603170133
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276742-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[30];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[gondor.apana.org.au,davemloft.net,kernel.org,oss.qualcomm.com,chromium.org,google.com,gmail.com,fairphone.com,linaro.org,quicinc.com,pm.me,redhat.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 05B912ACFF7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 17, 2026 at 02:50:41PM +0530, Harshal Dev wrote:
> Update the DT bindings for inline-crypto engine to require the power-domain
> and iface clock for Eliza and Milos.

Again, this mostly duplicates the subject (and your last paragraph).
Either drop it or move it there.

> 
> If the 'clk_ignore_unused' flag is not passed on the kernel command line,
> the unused 'iface' clock could be disabled by the kernel before ICE can
> probe. This leads to unclocked ICE hardware register accces being observed
> during ICE driver probe. On the other hand, If the 'pd_ignore_unused' flag
> is not passed on the kernel command line, the unused UFS_PHY_GDSC power
> domain could be disabled by the kernel before ICE probes. This results in
> a 'stuck' clock issue being observed when ICE attempts to enable the
> 'core' clock.

What's the difference from the previous patch?

> 
> Therefore, both the 'iface' clock and the UFS_PHY_GDSC power domain are
> mandatory resources for ICE which must be specified in the device tree
> node.
> 
> Fixes: 618195a7ac3df ("dt-bindings: crypto: qcom,inline-crypto-engine: Document the Eliza ICE")
> Fixes: 85faec1e85555 ("dt-bindings: crypto: qcom,inline-crypto-engine: document the Milos ICE")
> Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
> ---
>  .../bindings/crypto/qcom,inline-crypto-engine.yaml    | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 

-- 
With best wishes
Dmitry

