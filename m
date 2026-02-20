Return-Path: <devicetree+bounces-266826-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yNKXE2cPmGlz/gIAu9opvQ
	(envelope-from <devicetree+bounces-266826-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 08:38:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F04165577
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 08:38:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AA5A03030E84
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 07:38:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B40CA3328FB;
	Fri, 20 Feb 2026 07:38:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QnJk6wnU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PrBMskYK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79AFE227BA4
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 07:37:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771573080; cv=none; b=PFYEZl1PrKBj/ecV6RHvcZzKTr3Kqt8FBXYOvMowAmhwriYeC3eSBfzmF7MZXdJmmUMaUkknWB1rHVvTLZw3gf5tfy2QtEF8//A6YXHxvudDK+pH1DsHWWOyffKGtvQXg4i7+A5Cg3GTBgt+3KvUV/DhbowtfhhepFCCpGWEn5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771573080; c=relaxed/simple;
	bh=HGuSp2VF6EtcyW5OJmPkCM7XvToSlNH2F3wLtZoNy8M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D9Hd3RLLPzoIKyzMnta06p986GTcInzBMLo39sTN+DmAM7NxsuG5yUXkE6T1mO7ztevcmzMSQZdfC6wFIsV4Tk3iFeQ4i7zUePTosWol4fgFHCnwS34UPpSIzpojHXoUQBxUfnSM9Z14ELHmzpZxrFoUYRKA/psJeFRoIDPY9kY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QnJk6wnU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PrBMskYK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61K5RvKe1851348
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 07:37:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=EYpf01VqzYMOqIKXop1UeY2N
	HKS7LocvqzJI2+Aqals=; b=QnJk6wnUt4vtseRe36MZ95F4GU5juTeFBeoNAVbv
	vKHuEMFZje53bXsBrspZIyuuM+/KIuU5GrZP6LR/B4tF4zqn6G7C8Se9N3qUA6Lb
	3yk3hMWlYPzpng5L7QIYTKmb7Fsf8zXLT9p9EHXoWq5HlYx0sGnMVSj6NKrOMx3T
	WZC9bvxyZaOIKdLcUDZnRAE7vcWBaEEZX18RonMTtipNUgpDidlat4xM4AnbX8/H
	H0jSIsd6ZxzPG2cDtOpbIJRdspw76fGIcclluyr18xAejjS3IjwozEhY/TkZDrmf
	AnMWPXkpSacIqS30cd0vSi87kxL3D2cnhyvEo7hMfmDprQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ce9ng9eba-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 07:37:57 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-35301003062so12442054a91.2
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 23:37:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771573076; x=1772177876; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EYpf01VqzYMOqIKXop1UeY2NHKS7LocvqzJI2+Aqals=;
        b=PrBMskYKrPwdEn2U8dXnURst53/BcEUoWF50nTLEgLZcRFj9t0e1v65mNq7mmA15wK
         w2KNRdkj0qDXdzFcUC60Xu0OtwnBkdL6+RhS5Azf2hg5CuvjYWDgFeZzF5g73ZdgYHvA
         zit3WbkBbLSoTBCagYAmdhJyhF5WspQ0tYcYuqMudOtJGTuI2ICp/sCeO05m2HINWcqt
         L9Fjy0elh52CiKViqUYU9thA5GvHJ3+KT8zqYbktZ0OC06rXYNpU2s7B4rdMZvIbkChT
         cE3cJGp9aMbYB2w2fF82vgaeHycpmjbRebGiA4629LujEPoKtejDXilSJ6AwUNO0dGyE
         QVVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771573076; x=1772177876;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EYpf01VqzYMOqIKXop1UeY2NHKS7LocvqzJI2+Aqals=;
        b=UGdnD28UmpkEtothVxxgZs/7vqYVO500x8G0DGODIbK/FeAYzcHFAfq2b/un+jVW4E
         +oV5rXmAL5CcTl1J0wFiK+QyDcNtcjDdnOvd9gc/qoPyGY01a4PI3nUkXf/eOVhjEizX
         C1MVk0E3Bl0Ceg6H1bk0Hhy0dA2oLBG/4oHI2J+fK8y9q/g8twPknmKIF3Zd9d8kSUrA
         4LdveUi9WSfFG/wZA6axgH1cInowS8GUd5JMxEkMoVdfpYWF2gWe4hYb+u0UfIlHe/ed
         d42K/4Wfc8U7e1rXiIZPP3Z0pmqJ/wNtI3eNcksuo+RBRQQJUZbVJKVnyGU6sP3fLobo
         OUMQ==
X-Forwarded-Encrypted: i=1; AJvYcCXwwITBF6lgQDmAwU9g2HM263NtZ8rso3eMk+p1WBmB2oW/4dr0fcolFb6J1W2SuCQVnZ0vna99VuwC@vger.kernel.org
X-Gm-Message-State: AOJu0YyZCGdKSVa9LdyuxayEpwpr2EI1tllTKT3fkstSTFBpqdyM48WB
	CDjT2iNz6e1Xw1TcZDbWimNHrfyd1KLZahPSk4dP65YaZ35N3bmt5cc5ajSfMNDLXHFvHC7x4wo
	KupD0hCck6jq8V1KCT9iX3apyOnFZtESK5dxAL2H0Wa9eKbKjWV1UqK6ga3RSgob8
X-Gm-Gg: AZuq6aK29B+23+FLPJobPxlGe9sn3MEUc1DFeH78jUgXZB/VXEbodvteAWmHYLsSG/l
	s67fGgiwPTKGwH0dKWLlcuS7jYyhYRWcl+NHUeZGcz7fMyFGZcGF0UC4nJThsO+o5hRy1WJpbpt
	uRSCXLx2n1KpHLuczBHuylC7eD1V6I3YjMmT38dDIr4+IEWmHgav+Jb6n+CAoqGjRiU2vYLaJ0d
	JebVNrLy5xdl89nGg0hSwrv88mJ00dW0868MRDzeEkC97FE/C19pFnkhYvhAKO7x6uZmLYdicKl
	6srp/1sfL4JmK2JLtJzS7He0xyDatfTcN6tP9TbgcIq8DGmzkW4FD+q41sXEosuCiOCzlzEZ+T0
	nXdFaZ2pl+6GpbRbX5Qhg7RBeQugntqGXKdMSuDbKaZeVxlikr+Pw+7FIiKs=
X-Received: by 2002:a17:90b:2f45:b0:340:ca7d:936a with SMTP id 98e67ed59e1d1-35844f99201mr20142470a91.18.1771573076324;
        Thu, 19 Feb 2026 23:37:56 -0800 (PST)
X-Received: by 2002:a17:90b:2f45:b0:340:ca7d:936a with SMTP id 98e67ed59e1d1-35844f99201mr20142446a91.18.1771573075810;
        Thu, 19 Feb 2026 23:37:55 -0800 (PST)
Received: from hu-arakshit-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3589d81eb8fsm2285630a91.8.2026.02.19.23.37.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 23:37:55 -0800 (PST)
Date: Fri, 20 Feb 2026 13:07:48 +0530
From: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org
Subject: Re: [PATCH v6 2/4] soc: qcom: ice: Add OPP-based clock scaling
 support for ICE
Message-ID: <aZgPTLttO+fO8cfC@hu-arakshit-hyd.qualcomm.com>
References: <20260219-enable-ufs-ice-clock-scaling-v6-0-0c5245117d45@oss.qualcomm.com>
 <20260219-enable-ufs-ice-clock-scaling-v6-2-0c5245117d45@oss.qualcomm.com>
 <15495f8a-37b0-4768-9ee1-05fd6c70034e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <15495f8a-37b0-4768-9ee1-05fd6c70034e@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIwMDA2NSBTYWx0ZWRfXxk0+G52ZyI5R
 wvfLNhOqd43iGoZ/fyCkxFyfoI2a2oEe9gpqO6yUOuGRc2XoZtuk1dJWaQo/pnqPzQ8igN0yf+G
 jXwpppH8sPlfT1zEX85E1ZXsQ/FMQ9CTZE3S91q3d5MTV5p7oCNZBc1hLaBual7SJ8AHjTZaFIO
 wjlkedpgE3VPSxfdTu+djRoAgwmWftSbH8HI2hT4GEloOBKNoVGw1DCjYDbLVX+o39cFOs15MAk
 mv0GFVSPTYdekQ3fO0nMTBBNlcyWOJAjr+AAu1c9WesaE3YBfUPdi+8al7674yLKOr9zhZlGkah
 qCixWni2Sq/ga17FP45kukrmwPvTLb0QHiHQFWDqggSoKC9CGnlZ1kDrMsweiwRgzAwU13mlGSL
 WBCdwKq1bUNr5YcYOs3EHSiPuPegtKeulr43uK9JdsDBwH+MGWg+0U9WhqKjUx86F4bGxEy+yPx
 gNsmnBtd/ozb5Fics7Q==
X-Proofpoint-ORIG-GUID: Y-pE8EXDGJG-Q_jPMFxemyZGxgrdI80b
X-Authority-Analysis: v=2.4 cv=Sbj6t/Ru c=1 sm=1 tr=0 ts=69980f55 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=3jkGTw76aC5nUHUS4j8A:9 a=CjuIK1q_8ugA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: Y-pE8EXDGJG-Q_jPMFxemyZGxgrdI80b
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_06,2026-02-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 adultscore=0 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 spamscore=0 malwarescore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602200065
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266826-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,hu-arakshit-hyd.qualcomm.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abhinaba.rakshit@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B2F04165577
X-Rspamd-Action: no action

On Thu, Feb 19, 2026 at 03:16:33PM +0100, Konrad Dybcio wrote:
> On 2/19/26 10:39 AM, Abhinaba Rakshit wrote:
> > Register optional operation-points-v2 table for ICE device
> > during device probe.
> > 
> > Introduce clock scaling API qcom_ice_scale_clk which scale ICE
> > core clock based on the target frequency provided and if a valid
> > OPP-table is registered. Use flags (if provided) to decide on
> > the rounding of the clock freq against OPP-table. Disable clock
> > scaling if OPP-table is not registered.
> > 
> > When an ICE-device specific OPP table is available, use the PM OPP
> > framework to manage frequency scaling and maintain proper power-domain
> > constraints.
> > 
> > Also, ensure to drop the votes in suspend to prevent power/thermal
> > retention. Subsequently restore the frequency in resume from
> > core_clk_freq which stores the last ICE core clock operating frequency.
> > 
> > Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
> > ---
> 
> [...]
> 
> > +int qcom_ice_scale_clk(struct qcom_ice *ice, unsigned long target_freq,
> > +		       unsigned int flags)
> 
> If you're not going to add more flags, 'bool round_ceil' would do just fine,
> without introducing new custom defines

I guess, the defines I am currently using are mutually exclusive and not intend
to extend it. Hence, can replace using 'bool round_ceil'.
Ack, will send a new patchset with the update.
 
> [...]
> 
> > +	/*
> > +	 * Register the OPP table only when ICE is described as a standalone
> > +	 * device node. Older platforms place ICE inside the storage controller
> > +	 * node, so they don't need an OPP table here, as they are handled in
> > +	 * storage controller.
> > +	 */
> > +	if (!is_legacy_binding) {
> > +		/* OPP table is optional */
> > +		err = devm_pm_opp_of_add_table(dev);
> > +		if (err && err != -ENODEV) {
> > +			dev_err(dev, "Invalid OPP table in Device tree\n");
> > +			return ERR_PTR(err);
> > +		}
> > +		engine->has_opp = (err == 0);
> > +
> > +		if (!engine->has_opp)
> > +			dev_info(dev, "ICE OPP table is not registered\n");
> 
> dev_warn(dev, "ICE OPP table is not registered, please update your DT")

Ack, will send a new patchset with the update.

Abhinaba Rakshit

