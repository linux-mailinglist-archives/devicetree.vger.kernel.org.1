Return-Path: <devicetree+bounces-263364-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sPhiDc/rhWlvIQQAu9opvQ
	(envelope-from <devicetree+bounces-263364-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 14:25:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E52FE16B
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 14:25:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 27D18301524D
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 13:23:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47DF03D5231;
	Fri,  6 Feb 2026 13:23:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oYLKpI92";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YuVg3Ixy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE76A3B531F
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 13:23:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770384219; cv=none; b=L+zCY2trr5jlBOSnBLH1puXOB00Az2A9bUWNMvkCC6U7DlMeXUulfuKWiaEAlnpboNnPy9XeMA1abpKKbgwOMDRDb2dejfSwDl6rW7NbRPjE2gncRJ5sheiy+EAcpxHJl1J0k6VsI2SEpfIaraWYV0AjrVHeiGcC//NumK3nd+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770384219; c=relaxed/simple;
	bh=fqZ8bqAlwUxBwe4Z1+H16jnykQV8yO9H8sw0Vqob/0g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RKDwVj94zSQeug9bJBk1G90k76kISFLlnN6TtHZLjraoBQGmLMwu/YJM+ufndVwGOxRTn/VFYiFToa29nIxR6hMwwDb04zee3QI/1LSVP8fDQFCGu5yRQDVZuZfb5akVL1fYtjpy7jc4jLiQXnRb3ZmrllqQ9wfzKj4b4SP4jgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oYLKpI92; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YuVg3Ixy; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6168tXDM695359
	for <devicetree@vger.kernel.org>; Fri, 6 Feb 2026 13:23:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Qcbx8hOqgZKgbdxSnQdVeh45
	s4d6AAaaCPjmsAiQNIM=; b=oYLKpI92S6Q7d7Cf1DrAwDVbpDZdYaJQHEEYEz8i
	q7+upvosTjWwB73AvGT/DpOKcSWDuqZsIRNc3KnITrFiQLJ9IuzuwLK1Qfe8SWt0
	xPKxsdF9JGSpyQg0voI3pl0/RVSfz+qXq5gSgvObQ/RiECziXWgbdOst8cR9u5jj
	VyrWYjteW0DrTXIcgYG0io0DMfwjIsWLAZaB2jGQQBJZjYo3mhq2bdmMDiGyAXfq
	jONDLiC8TLq+60zWtaHleduCLB62m34ekmTP6UM3zy19XRfBebWJeZ4HjjFecNsT
	YIduTS67LujAYsfXJfj4LtxXw00N9peEy8qZ1FjldKVPFQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c53qvam9u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 13:23:37 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c67e92aad79so1273234a12.0
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 05:23:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770384217; x=1770989017; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Qcbx8hOqgZKgbdxSnQdVeh45s4d6AAaaCPjmsAiQNIM=;
        b=YuVg3IxyTS7DKgG4lVjz54J14oaNIMAFgY2VXC03zh1iYNiftCB5w/t5Uk9Dl/Edbk
         Asd5g/cRj7xPa2XAHV+SuRIFToUzeUlSnyYqdn/gHJqGdVrhmDkKQZ9vT29ntf/iIoFw
         S8+ySBkNtRM2ZWsMSr0kSXf14xxziFu0n1TO/G6UTryadQE1YHcaAXiHG6ZRFmxa0/Z3
         YHtxFaHL3L0oSMnKo98az484CkD6VK3NNGVvSzc/EdgZBzoz7DreaywLWgktu1um0dce
         CN9mA3MYk2VCSpsbMLs/B/rWkVEoe4A0XWrU26l66roVDSrh+BWCIr+vHMKqc+OXav17
         g+Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770384217; x=1770989017;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qcbx8hOqgZKgbdxSnQdVeh45s4d6AAaaCPjmsAiQNIM=;
        b=WCr1McIF9kDsNhUxsSIESOmKhr5LWXosWpK9SPCKuSVU6LQETuanzFcxEijAfByO9a
         pY9DD9ABjssJmBlkXYjeV2O0JwBF6095J1j4v1VREqLBoy8eCY6MhQUyw7xlT3B2pLQR
         fXIpl1M5RzwW16o0Kq3QpQ5iTToFWmpNykVHHHbzEFGmTEApSJr73ssUqmis+SKv7z+f
         MyAGKBlnmYyw6cNEJ+4+6zjBOYrbdHH9WWFq1+cb2ZXJ0GpL3gNDh9Kt/CME1OP9SgH/
         Q6x8wnEod376ZqwsbwtObFQNH/TdOevBRh5HS1PkmP+71ft4/t9YJN0OcWkOm8vfldrw
         ZmdQ==
X-Forwarded-Encrypted: i=1; AJvYcCViAzFts6fCTZ1KZjdVnmfpB6ZS6EbfH6pgi1g9BIZbm8zeRiCuS+W3Yu2ma1kLLlR1pR8Pyr9arEqf@vger.kernel.org
X-Gm-Message-State: AOJu0Yzfe8frWYWR92rT1BOCBXDsR4IpwrUNiuTtCXzmXaGe/ZT2MAdL
	mTFQR1GWMDu8curPPM4UlmvhmP2J9NUXf7e0ez3iVxS+/L3U9/R/jK9p+z2HSg9IC22FwA9fDkE
	PTqKAitu8PiDrcWVNXmKCsDSytwsLKwD9hLANm6G277jbDr79pGgUJwoYPOf4baNl
X-Gm-Gg: AZuq6aL1iOExUZAsZ0DAXMycVhdq3PnfdRWnMUu3b2hfoRlSMzkcqS+rFOwoCzU+gtY
	X9Is4tu/nO1cQF1cOqJpCoCF+iQplJ55CpFRFB2Qm/Rbz0brfk/yGeKWbi6FI96NByfllrQ12EF
	0ZOK8udwwLJFd15QufVlb6UzJUxkaPEsIM9UJM6junJk2c56okwKtQt8mr70H6W4xBgHpQAcHqn
	EtJN5cUEmylq8vpTY0mOor+0YMVzi6B+iA96tIG3BUKpukiGosTM/PbMuQzp1eO4gSOx+0OkL91
	lA1+FXeZhXMXAxPrpGliLy8chz/dxOOkFgbMCcoSLc3udjxOAmG5EwqcX8bQ2+yuUZVCjHl1MKm
	rRjL5SKA/FU4CjcCgYi0E/GafFSk9earnmHqHppftpvox1xY=
X-Received: by 2002:a17:903:244a:b0:295:c2e7:7199 with SMTP id d9443c01a7336-2a9516fb30bmr25300765ad.29.1770384216759;
        Fri, 06 Feb 2026 05:23:36 -0800 (PST)
X-Received: by 2002:a17:903:244a:b0:295:c2e7:7199 with SMTP id d9443c01a7336-2a9516fb30bmr25300415ad.29.1770384216215;
        Fri, 06 Feb 2026 05:23:36 -0800 (PST)
Received: from hu-arakshit-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a9521f3b6asm24313205ad.77.2026.02.06.05.23.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 05:23:35 -0800 (PST)
Date: Fri, 6 Feb 2026 18:53:28 +0530
From: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        linux-crypto@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 2/4] soc: qcom: ice: Add OPP-based clock scaling
 support for ICE
Message-ID: <aYXrUM+Wuso+aHGc@hu-arakshit-hyd.qualcomm.com>
References: <20260128-enable-ufs-ice-clock-scaling-v4-0-260141e8fce6@oss.qualcomm.com>
 <20260128-enable-ufs-ice-clock-scaling-v4-2-260141e8fce6@oss.qualcomm.com>
 <20260128-daft-seriema-of-promotion-c50eb5@quoll>
 <aYBE/VljJTUNx3LK@hu-arakshit-hyd.qualcomm.com>
 <b556cc32-2b8e-4451-b333-aec2eddee7b1@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b556cc32-2b8e-4451-b333-aec2eddee7b1@kernel.org>
X-Authority-Analysis: v=2.4 cv=TsPrRTXh c=1 sm=1 tr=0 ts=6985eb59 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=utnUQDMwVCZhAfiAu78A:9 a=CjuIK1q_8ugA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-ORIG-GUID: b8azeOeK2u1gDUPUnz3rzbUqErRpmaW4
X-Proofpoint-GUID: b8azeOeK2u1gDUPUnz3rzbUqErRpmaW4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDA5NSBTYWx0ZWRfX6dIWwWN2bkNN
 IQ0WKJfzkdB8GZ4gn5OF+rcZD0DmGhom8KtlQeSVPVJmlrzO1PdHv0OuvrLo5+9weIfHDchvn3D
 UbbzbExj7hTFPrrvKgq9OAL62I3UaX0LuFUDY5AuZqz31nQQsVGE3dkiSHKwhD/RQAK6CU2pd7Q
 Ap6ubSSw3xZ+qMAirMwD8GTsqO5sBBShRJwxYbohlZotIRrwVDBi8rwO7AlQ+BdAHM4/MZKkWmC
 gtDnU3RqQc8YqpQ5Tsz0502Bii4MUCHLS6J07WckWeYYu1crCxMfJ4h4CZ/IVTH5lsl2hQSKc/R
 xS2lpsUYnnF4Tz3EyqPfP6hA5SfnXtf07cO6+/QpghZej6o9/NjDyjiZqO+EY+IW8PyD85cVBk2
 DqJcHAk084FLXo3hZdyF1VfFhkjuC4vZVwmBj/+/M14CgmkLlqjj/Rc02htyp036UDbOdgZrug1
 mqSem6w+xjiEDtpw6+A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_04,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 lowpriorityscore=0 phishscore=0 priorityscore=1501
 suspectscore=0 malwarescore=0 bulkscore=0 spamscore=0 clxscore=1015
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602060095
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263364-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abhinaba.rakshit@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.978];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 84E52FE16B
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 12:26:25PM +0100, Krzysztof Kozlowski wrote:
> On 02/02/2026 07:32, Abhinaba Rakshit wrote:
> > On Wed, Jan 28, 2026 at 12:04:26PM +0100, Krzysztof Kozlowski wrote:
> >> On Wed, Jan 28, 2026 at 02:16:41PM +0530, Abhinaba Rakshit wrote:
> >>>  	struct qcom_ice *engine;
> >>> +	struct dev_pm_opp *opp;
> >>> +	int err;
> >>> +	unsigned long rate;
> >>>  
> >>>  	if (!qcom_scm_is_available())
> >>>  		return ERR_PTR(-EPROBE_DEFER);
> >>> @@ -584,6 +651,46 @@ static struct qcom_ice *qcom_ice_create(struct device *dev,
> >>>  	if (IS_ERR(engine->core_clk))
> >>>  		return ERR_CAST(engine->core_clk);
> >>>  
> >>> +	/* Register the OPP table only when ICE is described as a standalone
> >>
> >> This is not netdev...
> > 
> > Okay, if I understand it correct, its not conventional to use of_device_is_compatible
> > outside netdev subsystem. Will update as mentioned below.
> 
> No, please read entire coding style, although the comment was about
> comment style.

Sure, will ensure to use the correct comment styles.

Abhinaba Rakshit

