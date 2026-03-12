Return-Path: <devicetree+bounces-274422-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iULHAbpGsmkCLAAAu9opvQ
	(envelope-from <devicetree+bounces-274422-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 05:53:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB9526D3BA
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 05:53:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 08F433019834
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 04:53:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6FF139A81B;
	Thu, 12 Mar 2026 04:53:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dchCiEM3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FH4PlfAV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0A739448E
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 04:53:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773291189; cv=none; b=fRkaBUDiUkggoLHrGlvaxooKjRZQ1kCIJLjYU+KiosCxkiliBwbNF1DeynATrd/1GHr85wLztAFjlJvve2Ijw6kse7wCQvS/eQZzcMGxW2dXtZ6ADUMZBK1KbOUYdmEz0jtUG4L2HY+ZvajEFVpcZadimOs7ULKj4l8A+T9uSjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773291189; c=relaxed/simple;
	bh=lN/KbGQqw23Tc2KDnTrwaaYJdfzwqq6mDA68SJrn/qc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aeU3z8xd8eYQY3bDPW9/z9tGgj7O+XnA/FiVnhki7UnhERBnOLi85Be04QLzsXgKjvdJ96A26weojfbQTj3ra7SO+NMiIKTlAuqT2MPS8WP+ZqeJ7MZlSQ800OuSk9i+zk7bZKPk1cUyvIUIcA/gwd0ssLmhvjSfXq28PcBW4Nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dchCiEM3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FH4PlfAV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BMNOZ03536187
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 04:53:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Jl8minE8nYKp9+OT5OcDwwB9
	zbvmYytTY2026ml5RWM=; b=dchCiEM32H1zvmnyTX/vqHJhwhPXOd1shQZkhVW5
	V6JQK1FWz/BmIBAEIbi4Z2Z4wiXWxVZu3Hp/aRq+HAj4zfh3q2p1Az1vuY68V/xF
	/C785FdLoLRzk9VQPY56W2PM3wGpvasy3MCx6w6dUvphruf8VSpg1HNrnSIi780+
	qPIBjwU7rCj0FFs4XnAMBQStvoLjYMDRb6q0ibyJNRqZfHCzFoqVhpchbOjRHtTZ
	O86Qjc+g7ECZWed9AtjfiZNfaqBYy4CuSOy0qWwNGniA91ioKA6Nbe0qvdxnz0/T
	Ins1Kjn5mf0sOAlMXL7GiSUhjwG6VR6/+dHI2YqG5GzLEg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cuh54rwvv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 04:53:07 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-899edf01747so55147906d6.2
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 21:53:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773291187; x=1773895987; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Jl8minE8nYKp9+OT5OcDwwB9zbvmYytTY2026ml5RWM=;
        b=FH4PlfAVx+Zn317QI9i99LL6AJKOy6emI2z+8SF8AyM0nfPOR1luf940F5RNfVpFF+
         fqfB8o4LT4vU584vSwsAP9e2op4KVEGLhK5KDiq5e3zRPeNfG0PAELjDGOX0/dINioUM
         mtai9JKZqUuj6IvVcc7ML1UBASnCnZle3TQEYXe2J+5k+c1lA5pJPGSkSlkzycK+NxLN
         o2loj5SRYQLNT5gkwyWnmq9ot4qEiZEi2x+X1GofYXx7rrKTvzipxK5EsOE5LvE2IIrN
         CbsUNwQlE+ac3zozmSHIej9oLTEc6rPezsnIF9IQ1zUUztA1YmShYW1xECdPK5hHE0hg
         N2Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773291187; x=1773895987;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Jl8minE8nYKp9+OT5OcDwwB9zbvmYytTY2026ml5RWM=;
        b=UvhyDMXWp27UGt5GgTJObVaxuFwG4ZPvj9TvoqbaWF/mkdxjnAavbF1tNXrXd9aVaV
         aGEyqGTdw4fUch7fQ0fTe/QtJJxOm9M9JlhnQcGPgJgBpuyt7CcDdasqF8ofN5sfJ7km
         w242JtbmKTq2mWA7Q7RY/pbFkSgZGAwCsvUE4AfRbtSnUVYJi44dE6uRCWNGnvEHoh+O
         HKMUBzS64MKBS2Kay33vcyseZmSKAfJoXg2bsoe1IhYH5rC4wLm2WBm2I6E2RJqLwjvE
         lp4ExrrToaCVIZ8NXgLXQ0lunU8s+SUWUpyXpeY7hHzj5HV5t3Eo03LmxvfTAvZv9cqS
         Lt0g==
X-Forwarded-Encrypted: i=1; AJvYcCXYgPEiMdOuyYoWz5MS5R6ApYAuJZoTuvtHMCZbVUOm86LG3ImMSJ1PC54RnyHohxd6v2uMiQENStiS@vger.kernel.org
X-Gm-Message-State: AOJu0YyxU24jgf71FKxDOK576BEA0zNRsbxgZTcxnXzccko3KJukTinS
	KTEtY2xGWRmx8Rmp/g4bckOdEJ5AERqa6RxjrhNptWoKnQ1a2Y+cBrrCk+AwLn5R15Ln5NYx6cn
	p5jHoSEetOn5zzSPo+A0xxjcNHK/xTCR30V3+HpABNQW8njSqSO77jGO2yJOcm2Lw
X-Gm-Gg: ATEYQzxpd/xwUeC3KdQzMCqfVlX02GwT76edvvgjIBDorYZMYKDwqPHg4R6vT2UYveg
	Vdj1YudoalCrmRSp00zyQyTDvOfewJUg3g8sklSyMrESZd7DZT1fbzJ55rxv7/L2ztLPSGyeRUX
	tyQCvc6++BCNFaU3lKfmZyer01lXk9j8ZUJyuDFeLHpIfNlY2vae1YpSl/Mu7APvaVNOUk9firM
	n6rloORhuTuZKJanDiYi6x42irMV27/9yo8OG0XkyCBGfCUzsYLXAIWqAlpuvkY2MkQwCJH4kQR
	iufp6bGKgiBy65mTvyWjV3H3VWta0yiadQaGuyML7EbVWhg5jRY9P8yRyzKiR1BHotBONt6PiZI
	eisyCQkDdq1B22BtFAZAIuJL9ExDVtcs4tac5xttl8tfXA8pcC6Kmoylc4kF6vvu1zSCtmNGl09
	yJ5yhJ0jeeUq5xB1hxNu2zqzfr9mPcAXPepsc=
X-Received: by 2002:a05:620a:4153:b0:8cd:79aa:693a with SMTP id af79cd13be357-8cda1a56db3mr613115185a.67.1773291186610;
        Wed, 11 Mar 2026 21:53:06 -0700 (PDT)
X-Received: by 2002:a05:620a:4153:b0:8cd:79aa:693a with SMTP id af79cd13be357-8cda1a56db3mr613112585a.67.1773291186087;
        Wed, 11 Mar 2026 21:53:06 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15603487bsm739851e87.41.2026.03.11.21.53.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 21:53:03 -0700 (PDT)
Date: Thu, 12 Mar 2026 06:53:00 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 4/7] dt-bindings: remoteproc: qcom: Document pas for
 SoCCP on Kaanapali and Glymur platforms
Message-ID: <tpoksnga6erjhoh37vohoqw32fe62wbhjg74tvulgyn4jt2nbi@kamwahlyuqvo>
References: <20260310-knp-soccp-v4-0-0a91575e0e7e@oss.qualcomm.com>
 <20260310-knp-soccp-v4-4-0a91575e0e7e@oss.qualcomm.com>
 <oqvq52az6iknhg4negqaprfsx5dfo527acoeas3tusqpqvak2c@wrdmsydyy6ns>
 <20260311-unique-daft-nightingale-584252@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260311-unique-daft-nightingale-584252@quoll>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDAzNiBTYWx0ZWRfX6O+HxkmPLJxy
 COFOwcooS3gxfp3sAX/jUoX8JevhvNDekDIBdvWbr5DHApAEhmgtQC59PDyF3Q4Yw7JphOQlFqp
 Eua+by/0s0hQKlcbK5edsSDfk651gk8+r92WlS+qrG7ry3/bsu4qlJHtpScXLMeKHCiXG3x7bnN
 RxC9irYbWUlCb1Dw7Vfk7ptnzQoWiFIGpcQOC/SADzgK4BfAXN2Xk5XvFSu9Pjr3UzifTVz/e2T
 yvtpt72dDHkpcxN4UApqKul7SUFPLplZCFMcGSLnNDQmGAg16mfNl7OfGpWeLI27d+eX1jZjZPr
 rnID2rGjPKtrWi/3g4c16rWOTs52vzrI/n9CYzmYqv3PJD//L89AeYuJ9q66Q8QJCorKWga+o9E
 9WYiV29dT16OVr2g9LtwAi8sKEsetGqirg3h0MD1Xj8tMRk0BPpqIdWhIKud8pJ4+P8dMdr27Gc
 hPCch2kvWarAsGUicqA==
X-Authority-Analysis: v=2.4 cv=YbiwJgRf c=1 sm=1 tr=0 ts=69b246b3 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=n-Yar0ZZng0pcsCwfiQA:9 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: sV0-xk1Cc5XG0ep_GaNSvRHkwMJAYBmo
X-Proofpoint-ORIG-GUID: sV0-xk1Cc5XG0ep_GaNSvRHkwMJAYBmo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 bulkscore=0 spamscore=0
 adultscore=0 lowpriorityscore=0 impostorscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603120036
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274422-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 9CB9526D3BA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

gn Wed, Mar 11, 2026 at 07:26:38AM +0100, Krzysztof Kozlowski wrote:
> On Wed, Mar 11, 2026 at 04:04:09AM +0200, Dmitry Baryshkov wrote:
> > On Tue, Mar 10, 2026 at 03:03:20AM -0700, Jingyi Wang wrote:
> > > Document the component used to boot SoCCP on Kaanapali SoC and add
> > > compatible for Glymur SoCCP which could fallback to Kaanapali. Extend
> > > the "qcom,smem-states", "qcom,smem-state-names" in the pas-common.
> > > 
> > > Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> > > ---
> > >  .../remoteproc/qcom,kaanapali-soccp-pas.yaml       | 154 +++++++++++++++++++++
> > >  .../bindings/remoteproc/qcom,pas-common.yaml       |   6 +-
> > >  2 files changed, 159 insertions(+), 1 deletion(-)
> > 
> > With all the changes to pas-common, what is being left in it? Would it
> 
> You need place for definition of properties - smd/glink-edge and
> qcom,smem-states. The latter is actually not properly defined in one
> place, becuse there are bindings having  it but not refencing
> pas-common.

So do we for schemas definig smd-edge.

> 
> It can also define common order of interrupts, but as you pointed out
> this does not work for this new device anymore.

Nor does it work for SocCP smem-states. I think that having such a
pas-common overcomplicates existing schema. What about splitting
qcom,dsp-common from qcom,pas-common with the latter keeping properties
that are common to existing DSP and SoCCP, while the former being used
only for DSPs?

> 
> > be easier to leave it as is for the traditional DSPs and copy necessary
> > functionality into the soccp schema?

-- 
With best wishes
Dmitry

