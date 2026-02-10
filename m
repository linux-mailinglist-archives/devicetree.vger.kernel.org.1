Return-Path: <devicetree+bounces-264385-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eAf4CgIei2n7QAAAu9opvQ
	(envelope-from <devicetree+bounces-264385-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:01:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 84FD811A7ED
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 13:00:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 425223004606
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 12:00:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7429631DD98;
	Tue, 10 Feb 2026 12:00:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j6ZhEfbn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JGgyQ3jw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4522E321457
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:00:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=205.220.180.131
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770724850; cv=pass; b=JxfeiaSVwIFAalDvhR+1e+CM5EiWmATKpr3fxC3SBAdSnibFa+A5d0fkg4ZRI06FWDtvQt1Dxor4xv2fTYukf5nQs1708JZ8pwNYax+D+C33aZuZb1HNOkJx/BhO4FCAnjb1ZfIGCPZvzk9cm2x3S0u47BIaLEW7wL1PZ0zIZB8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770724850; c=relaxed/simple;
	bh=YvQqBzBDIT2e7LXYCdzJ5n+jCiv7TZyJ2eNvdGkz7CU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ojpk8cFuuDi9LHzjRO57vZ8i9dm44vtIpjFo4zVB+pDmQt/zbfyz0B1YOSy8H0X6QPi0qB9FIOWjPBzHaYwc4FfwCkTFKOtriKDmDdI6xnq73leP+/xVf3FSFlkH2pAJTipmQH8Q1njYyQQzuzGQHqcc0M3LSLkY4XnaEDY36v4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j6ZhEfbn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JGgyQ3jw; arc=pass smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61AA3B1R1172317
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:00:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=kkNOhm6UTNF1pjoKgOHChpe2
	GvAzpQ4CZuki5UvxwSA=; b=j6ZhEfbnuxKQVDNFFEBpE0chm6PkEij0iXRrRazD
	O5MJLRInEblrbXwC3Rm85xNvr9M67xVWt5d7OcVHYbf7BK5jETQqJGM1K1S94XTk
	MKWkJnsdBffhGjeCxfuH4PhyjBijDZIc+vJ3ULLyInkc1dclH1FUyr90VCi7eYRj
	JXVr2yH1OR/A51AxnI9PaICaAWiKiRu8EkasvmjvJX51kHUfxj+sdmhNJwSnRcbc
	jL/XGXUg4NOTAPhCuueeQXi2VqjO3k4/5mn9Jy0mq4C3aXFDhPCeLKmBKp7oESTq
	G6+BpGyRJ66C/i2PFj0BZy/TW9FS0rHxXQRBO2lkswNv9Q==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7kftudq3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 12:00:47 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3545cc84ab1so13816665a91.0
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 04:00:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770724847; cv=none;
        d=google.com; s=arc-20240605;
        b=V5e3kFkBXozs29YZN5l1m+VqO5eTjsExNPAytkI6qZZRo+bdAbKSCZ6NnOrcvF5+A9
         Te4C4LYqHYjTGpqCgn0NeMuJtSBVgWGFbLp8pJGna/AZ92veUs5ks0RgotvFo+X6ZPit
         np2cQEXMmGU3cYje+oySn+E72sMGKcoOq5BYrLN1fZOb2M2U7Pj2iuGVrSpUiV1QkE9/
         pkERu5gnYN8ddzYSpY8C32pNNZQGnQCuCvAKdIAblc8aRH/Ihc8TuChLqITHgeSr8q0g
         iJ1qG7d6ROpCn9gufTNdbROA94yrHzh2fjytZjbbk+mEiV4NrWOzY8PfxgXtUwvjJ0bB
         7s+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kkNOhm6UTNF1pjoKgOHChpe2GvAzpQ4CZuki5UvxwSA=;
        fh=mq/tMPheW/mPIM7Oms/FgbK4V3xGE1ehTeWLTxH1FNM=;
        b=eikAqUKmZQJPqlBzSwIUH7Vc+Lx5YAqGxpTuy7lcGg+9h7xrSQUGxXmI5aSXGZ9y3o
         6iqm2d1tbbQo1qH3NR6c2V1dBVRQc91hPIjPYn/sr5xQM+Aq2AFYdUpaFgyd9aJEiM8s
         3/uaXxufVew77FfcjjEOTmXhlBfBwWCd6ACfBeyd4oTi9yh5l+ArhlceURZTTX8Nsmjr
         N+q9vX09QdSTUjnRDDtFfDjb9MO9pkzU0dFuEHse5OsAeNKylv8cYm+CN0ePmFVw17vT
         oAqVAZcsaw2ps4ei0SAUyt72Wtc/6qLAcWItKofsALlxwhH2eZlOYgjpjmlM2XtBeWcl
         SA2w==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770724847; x=1771329647; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kkNOhm6UTNF1pjoKgOHChpe2GvAzpQ4CZuki5UvxwSA=;
        b=JGgyQ3jwz1Kf3EwlWAoip5LwWyP2FzO//tbI9jHCoipaeTv16g8iLYTctBM7BvfRKl
         5XTGpqc7sshgabmywY/qfiMQvtUZoaZALqtuuCVBlrY1XwcRxyCoN+P0z2jJrtwpE9/o
         lft2E06AdUPq12POd8MaGTQdr5e8mGnjoCIMALhVh0A8tdokvQ9qs1BmjpttGgHv4vuu
         LbJxTYGyLWLR3IbMpxRR/2VH+hn7cV9QZcd/BrsQF7K+6XNHZNIPPONmK2dzpIlYN1WQ
         rM6Q3K+si1VnH3DIVDLXcQyJLkmkCfMmLcu8BhvkrOG9HgG1hgKKWTt1yh/jj3tVtUTY
         WXmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770724847; x=1771329647;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kkNOhm6UTNF1pjoKgOHChpe2GvAzpQ4CZuki5UvxwSA=;
        b=OzbRsWrZI9rXWLdTRZSyjsMm9EntK5cns+Mzb5MlNwdsQuC8AQgTZyuTePnISAbG0x
         qvriqnPxeATXtxktIbmF3ZK41ElfLwFPo14Dxmyb5Ikr7iQsWu3Hcrem3A9KqyFWKhcT
         kkFFS+7rev7QCUFnYUBbIOQ7ivgAqZlDIhhNNlKwU24+RKu5CYbS4YjvWP2Mbjy9pyx7
         33J8ntGywtP/tfaPtgS9JrxaaMdDlSDU/sf1hnXPCxC0VTAg8ec3Cm8s0G130XvyozHl
         Wx3YJmegkzgM/QxBbrECtD/szug9sSpB7GT2rg5IcTibBGGl6Ba6EZW6IiOPuy/0fIn2
         6Thw==
X-Forwarded-Encrypted: i=1; AJvYcCWE3lF6x7OUQPWTvm7Oj5rxgtYA85RAhAXpWQj7oYI2hoqG905YwIpameaZUFexWLDLfC4+I/ppSbXe@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9I7Z3FAUrBlmLwSrZf5wjNG1nIeH7UOqdkPfOs3Fx4n/cflQR
	dUmO4hIFr6KCYyIUyDUoTQsz9/p0iqd+DDdVgZdBMI6SoYujCn0ZQC8XbpDdOFwJGB0yqT85RKB
	41TvZ6ynttbh8iNP7x1fxv2pNZacJcPAPygMs3cSW3DzMswR461WnSnbjWK9lBC9OLhtA7qFM67
	uaDTipli9PSIKFV1CLF8oCPAc+1xRkLBnq5J9LOts=
X-Gm-Gg: AZuq6aJxYYXHqNnngIsgSIJc6gbKFu7JRsUrmmoE0k7g0Bx6rimGdZ1D24txNAffS9c
	c9NktLN+eBkB8sSAvMvRGtCcrOtT94wzqClIIR3blsIv3FELjMOVnsPyyALw0qT43PAY2LhAzkY
	GK4qshWMb80F3i8LkZzR6npbxABtJ3gsY2lCqXmpcs7FhfOCxFLS2iXeGP12D+lnBNa2KlO9nU8
	bBF
X-Received: by 2002:a17:90b:2788:b0:353:e91:9b2f with SMTP id 98e67ed59e1d1-35667da53d8mr1673472a91.37.1770724846462;
        Tue, 10 Feb 2026 04:00:46 -0800 (PST)
X-Received: by 2002:a17:90b:2788:b0:353:e91:9b2f with SMTP id
 98e67ed59e1d1-35667da53d8mr1673442a91.37.1770724845888; Tue, 10 Feb 2026
 04:00:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260210101157.2145113-1-vijayanand.jitta@oss.qualcomm.com> <20260210101157.2145113-3-vijayanand.jitta@oss.qualcomm.com>
In-Reply-To: <20260210101157.2145113-3-vijayanand.jitta@oss.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 10 Feb 2026 14:00:36 +0200
X-Gm-Features: AZwV_QiML8otMkecct1E1skSU9WeqWq86rbzn6_EO5wuJsDWXxKFk_hLjqxo8cM
Message-ID: <CAO9ioeVwPhbW=mkGUZQdCJH+C=KVf1bm=SDkoDinrj+nD94s3g@mail.gmail.com>
Subject: Re: [PATCH v7 2/3] of: factor arguments passed to of_map_id() into a struct
To: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
Cc: robin.murphy@arm.com, will@kernel.org, joro@8bytes.org, robh@kernel.org,
        konrad.dybcio@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com,
        bod@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
        prakash.gupta@oss.qualcomm.com, vikash.garodia@oss.qualcomm.com,
        iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEwMDEwMSBTYWx0ZWRfX2wTZ/rfYGcJA
 Pis5Y5GjD0KHtbA8ydEliCMXkuP2XNui2fSCFMqDrwrhFTz0wf0N/PzUbJQiBK5YJYAb2RibvKV
 PGbaAfg8b31kCsWZDb2QYStLP0gNBweQVC4K18WExS6ChQkUSrRhfu476TGDntHUI6ddgv4O8Op
 piD25FMTq3iZuLwi27q6020FpcfOY7DVW5f3gPntaQyT17lkb9ICRCvIC+pWnxT0NK1lpCQSwb9
 Yxz+j44IZLs2NMmFy4hCqZ1rqprcK/PpktpDGpB94k4Q1VeDhUkGNUPrbHtR9DoJOFRv/iLCAlj
 aMcB6DqRSSDJDRGLZq0QeoK8sS4ZckCYHd+Nwn2vbqwbn2sqhkBsbQG1CpsfdP+E6bdpfnFL4z8
 vkX47pZg62knCUirtrwaNOiTZnz1fqL60P7NXv6B5uyQvD7CpWPCLEnUhZf5SH8vwRp7/dS7IsS
 awk8Eikv9yJ22E+v4Lw==
X-Proofpoint-ORIG-GUID: rHx_zCkAMPCdFc-bnOK5fc6Cxy3eJr7Q
X-Authority-Analysis: v=2.4 cv=XfuEDY55 c=1 sm=1 tr=0 ts=698b1def cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22
 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=xaxt5VyFpAJ7rQpQ1PcA:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: rHx_zCkAMPCdFc-bnOK5fc6Cxy3eJr7Q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_01,2026-02-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 priorityscore=1501 lowpriorityscore=0
 impostorscore=0 suspectscore=0 malwarescore=0 phishscore=0 spamscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602100101
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264385-lists,devicetree=lfdr.de];
	RSPAMD_URIBL_FAIL(0.00)[oss.qualcomm.com:query timed out];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN_FAIL(0.00)[1.2.3.5.c.f.2.1.0.0.0.0.0.0.0.0.5.7.0.0.1.0.0.e.5.1.c.3.0.0.6.2.asn6.rspamd.com:query timed out];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RSPAMD_EMAILBL_FAIL(0.00)[robh.kernel.org:query timed out];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:dkim]
X-Rspamd-Queue-Id: 84FD811A7ED
X-Rspamd-Action: no action

On Tue, 10 Feb 2026 at 12:12, Vijayanand Jitta
<vijayanand.jitta@oss.qualcomm.com> wrote:
>
> From: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
>
> Introduce a new struct type where the optional arguments passed to
> of_map_id() are Currently embedded as of_phandle_args struct.
> Subsequent patches add additional arguments to the struct that the
> caller expects to be filled of_map_id().

You updated the patch, dropping of_map_args, but didn't update commit message.

>
> Suggested-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
> Signed-off-by: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>


-- 
With best wishes
Dmitry

