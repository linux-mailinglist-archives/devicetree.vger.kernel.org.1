Return-Path: <devicetree+bounces-274662-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wKO+D3XbsmlMQQAAu9opvQ
	(envelope-from <devicetree+bounces-274662-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:27:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3262746D6
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:27:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2F6723113AEE
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:19:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A53433263F;
	Thu, 12 Mar 2026 15:19:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="W3vHAaJq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="J8GsuaE5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 967DF37CD33
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:19:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773328743; cv=none; b=E79kZIUG+2rWpBIfCQssD9TvK5rs1iiwg6lk04r9nQfFQ6IorxZ8toFqfEd5cIA1hzsmzgNgynjqDKAIzdZzOnn7NjqeshQkDgd3A7Cqsae+2UrYEL3ryTs+GlNhATHlgWcltPcDZusUvk7TYKkJ795ZWoxzN9B/tttloqGqYbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773328743; c=relaxed/simple;
	bh=rw9cjFTPFVQ+ZCbCDgC0zpw35Koclq/8zUtdK1vKwrM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PMSMRyd8RtD962K1WDZVSyYP7nn2BYDm0wLEL5DOdQ438rSrUsyD5d0B5pXvi1i2N78kd+V27EpAEe1WeKm8pxx3az85ATR7+gonMWIv5+D3LVlgWfQrinxnQI/I5zuCFodGPf/Gb9fDi2dB5VuaACxFWPO61cz2rtQ7ewHqAMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=W3vHAaJq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=J8GsuaE5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62CDMQct1740765
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:18:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Hw6uxQ871DsIRv+VHm15KVSw
	+iaEQhZxCZPFOTPJMUg=; b=W3vHAaJqqosA5GemC3HIv3RrhoBoMe6iURMk2BZg
	8eI69PPgbZqMSAMQhBzPHU5rPw4Yg2i5gm574wyZ3BntlH/U4+fabySlm4335nN6
	6B6hy1zfNgnfwjw26GCO86RuhUhGlRHbKYuFyDot6AD7KPEjhFyEBJFrtpshAvXl
	8nNUCAvoBFBxxYWAGIZ9nkbQI/dEXqfetv2ciuQLktv5IijoJwe8EBDpzlyRbQ1L
	devSmEJK9WmpeD080hrTnRQv69c626yiKtJJ4o4tK4UQ/xZX6IVOjVNr7OrrsiGE
	VZbuZvMIx+YRvFiGU/dJ9Ihcd/T85FkGV9byJc02j2rYwA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cumvdhwk8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:18:59 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd7f6ac239so723878185a.2
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:18:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773328738; x=1773933538; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Hw6uxQ871DsIRv+VHm15KVSw+iaEQhZxCZPFOTPJMUg=;
        b=J8GsuaE50ZgrEH1q8W7Vxa6oOB0YNVrAEmnTZCZ7Ipq5IRLfcUuEsVHmxVOfjjPHpp
         mJjsWW1bJS9YVaxxsEzb1BOHYo19ZXzNsXwCGDPsef/a6PwKdZSwrXRo3imYpk9N6Qzy
         naoei8sILwlGbqgiM/Hagl7OS5TcO7k8ktWrpB/47eFS6efsAWAwQpgGaP49/bn7aIOE
         +qnuUj6/T7tUEf+B6w9uH2zS0n4n8/I/+kPxp9wkC9/uVmwsZv2KgzIDleYONPavlhb+
         4PCvWixRR8disCdQv0hK20gvyKlIgh5X32UcxySPHTJWkH2zYN6bvVxgMyTj7wvy80wt
         aLmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773328738; x=1773933538;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hw6uxQ871DsIRv+VHm15KVSw+iaEQhZxCZPFOTPJMUg=;
        b=a0lKjkH9v7bdaWV9sj0/CYh5TO4OAF+CkbiXezYxpPFail5JzMK9Yg9fplxTg5uLIs
         gmgkZuQX6zaHRdHNfklz4SRPRuE59WtXX3GDJh7c8e/sjubf0fYO4PJ6Ea56SlHqvXCR
         sHfHbZXHV4uHUAZ5cxb7K0khjf2R5rnWwkqYx6MHhbg77buguIRMg02uy/Fw2+bDvBoo
         94PVQq7KMHyiMehdgDBPXM2X6o2BCoJoiqIic2+heTr0208wTf4Fp5PTefnoWFHws9ld
         zKu3b1Osl3HegthReqTx1PSUnynZXS8RctuLo3XsQHyOqXP5vtavIKxERK5S8y7Zr/ba
         jzvQ==
X-Forwarded-Encrypted: i=1; AJvYcCWFfsBoM2ItHN7/z3I9IXyOpERJXrfj+eqAmf/s7RKYGUfZpvDAbTjFim63C8KYm6ZIP7TxVPGCjUa5@vger.kernel.org
X-Gm-Message-State: AOJu0YzFg/lYx4zkM8gcdKDosXqH5ND49g9s+x3VGuYW/J2t+OJLqpfI
	0VSgiyqL9SkFet1pxzm4K9+adLvtgOresrVgPp4nHijeXsQPdh6vaXpg2HTZjBBiOYrMwM3scsn
	sJYLplMA4tdPRnhRuolgsTsa9JKFxXWoPd7BjXFV9Fd5xiKAk4p8AnQSqXdZYBxqk
X-Gm-Gg: ATEYQzzmPQ4wXQIBEkHDkQZsTJA6kwYBwiUtI7amjT5xNhUThkt6MANKIJzhDk/Fx3Q
	KrH1JIcGBoKUMp342RyazvtaeXer5b9cb/XWOopHHvwFfoUd5iL2hJ4C9yNg48hR/DAGGPI1JQe
	yyfEK3bnZPuwfJCOogH9ANY49j2/td0Mo4lO4hHLljftRZxL4HpqETR/VBBCSQtqCmW83R7dsR9
	/As14OmnVcQoV70xn1l7+cyCSjAs6IJ99E+1nZS0xFN6dG4jFrZS1xBAx0/wDyyQix3AGXMfwBX
	cbu3V5IOfXOAG/okk1UZikCinvAXK9dVwYolVi+RCASMwH556P3agF7zZ6I+x1dNbsqPdeQhb8N
	/QEsXAGIPUKYAtSHLVeRAV+1BWAIiJjm7BogvyPGF5huGeD+MeT/mtSOSecHE2kVSBAS1EjgFcb
	TZZsvaliADfRlUX2EYrjCi8JVzcwiP0S8T+jI=
X-Received: by 2002:a05:620a:4509:b0:8cd:923a:879f with SMTP id af79cd13be357-8cdb5a874damr12099685a.23.1773328738494;
        Thu, 12 Mar 2026 08:18:58 -0700 (PDT)
X-Received: by 2002:a05:620a:4509:b0:8cd:923a:879f with SMTP id af79cd13be357-8cdb5a874damr12096185a.23.1773328737998;
        Thu, 12 Mar 2026 08:18:57 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a156366a7fsm1008010e87.76.2026.03.12.08.18.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 08:18:56 -0700 (PDT)
Date: Thu, 12 Mar 2026 17:18:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        sibi.sankar@oss.qualcomm.com, pankaj.patil@oss.qualcomm.com,
        rajendra.nayak@oss.qualcomm.com
Subject: Re: [PATCH 2/3] arm64: dts: qcom: Commonize Glymur CRD DTSI
Message-ID: <ke6nnmlvy5wszwhzwv3cs2aqbexjos6rbu247yad3t63plq6zs@ntwgtpc7b6pu>
References: <20260310054947.2114445-1-gopikrishna.garmidi@oss.qualcomm.com>
 <20260310054947.2114445-3-gopikrishna.garmidi@oss.qualcomm.com>
 <rdnz6fc3jfypy7yh6lkswvacarketkcepi3zfaq6pxlsljilbp@yzsyuirax2oy>
 <0330abfa-7932-404f-b3e3-f43251db2e0f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0330abfa-7932-404f-b3e3-f43251db2e0f@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEyMDEyMSBTYWx0ZWRfXxIKGz48dNIQZ
 nCXdlzMJmsJnikUNVGCTSSmUetLgoYk/asu1bArXEjQrwlu7OW5Zf5OqTdJ0gBD7iiAI3dv39SM
 fH3wSgkX+CjgDS6jge6DWnPPVtKzWJgfCA6vFJN46HVAkOjHY8wQls/74h8yZNu54w2HXPpOZhV
 P3LRv3DPEyyXNYPAhg16QbdJX+mXxw8R88K3m/G21XFrmmkg2YkDFQ6CE7SHZdwjfn/3sbPIhRJ
 Miv336rVo4L3bXfa3quB2mxiMdfa8fLydDS/lKCizv5Lre09sYC7+S3lvN7h6Jwdjx0Mc00ZPIw
 X7lRfxEZkmSvv4idzgrP9oob3qHBJKTfdpNd1DlGl4gs4Q3xD1/S0N2p+r2Pg6BjPa8SsAXxRvR
 3n2scHUwl63wMii77GcOS3+qYZzHBDKTVSQMWvubvjKiwLxghtGxdyQpPgF98ROe3GE2EYwSQVo
 rin8MIg8kOsI6XUtIuw==
X-Proofpoint-GUID: RutsoIfEc3dMXkab_jwCZcHkqtBBLwcz
X-Proofpoint-ORIG-GUID: RutsoIfEc3dMXkab_jwCZcHkqtBBLwcz
X-Authority-Analysis: v=2.4 cv=XsT3+FF9 c=1 sm=1 tr=0 ts=69b2d963 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=EUspDBNiAAAA:8
 a=d6TojosC2XHYXO-6eDEA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-12_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 bulkscore=0 clxscore=1015 adultscore=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603120121
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274662-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AC3262746D6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Mar 12, 2026 at 02:10:32PM +0530, Gopikrishna Garmidi wrote:
> Hi Dmitry Baryshkov,
> > > Commonize the existing Glymur DTSI to allow reuse across the different
> > > Glymur SKUs.
> > 
> > Is Mahua a Glymur SKU?
> Yes, Mahua is a variant of Glymur SoC with the same silicon but with the
> third CPU cluster disabled.

Your next patch points out that there are more differences than just a
disablement of the CPU cluster. I'd assume that Mahua is a sister
architecture, but not the same silicon. Please rephrase your commit
message without making assumptions and being more explicit that it is
going to be shared with Mahua, a different SoC.

> > > 
> > > Also leave PCIe3b nodes disabled until the PCIe3b PHY init sequence
> > > support gets added, since it's disabled at the UEFI level by default.
> > > 
> > > Signed-off-by: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
> > > ---
> > >   arch/arm64/boot/dts/qcom/glymur-crd.dts       | 586 +-----------------
> > >   .../qcom/{glymur-crd.dts => glymur-crd.dtsi}  |   7 -
> > >   2 files changed, 1 insertion(+), 592 deletions(-)
> > >   copy arch/arm64/boot/dts/qcom/{glymur-crd.dts => glymur-crd.dtsi} (99%)
> > > 
> > 
> 

-- 
With best wishes
Dmitry

