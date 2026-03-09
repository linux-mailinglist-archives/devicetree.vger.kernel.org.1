Return-Path: <devicetree+bounces-272683-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +PMJLeFWrmmbCQIAu9opvQ
	(envelope-from <devicetree+bounces-272683-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 06:13:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 64643233DDF
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 06:13:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E90593022969
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 05:12:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A1382D592F;
	Mon,  9 Mar 2026 05:12:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ivvsFJFo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="F8o/KO4A"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13AF52010EE
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 05:12:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773033172; cv=none; b=G6kUWNLNww4BSfRhdLq0+eTwYlCsoV+SnvSuF50lk2CWGxJn0i2EFVo0JbPXWeTBR6LRumLOhgfhnJXLDzrlu1+lDiTG0pc+CqH+A9WJ4z59uYQnx1eY7rhCnFJUSXI3dZt1ht8AcK11nfg5GZOu3SkzNO7z6I8pa/b2/NxSYY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773033172; c=relaxed/simple;
	bh=oWx7RRG1m5AcqND2F8ZlwW1HBlD7BrS6vCGSTyqaDRc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L+pkSvD1hPx8Nj/iDmjTnJcMNZGG0u4/FAiPzZvVINVxmwoVytC/h4O9V+LgMelwI7TtXWxCruYlmRdMXt68a9yn0cEhAX00yRpcB9fprAGR1lAyPNNmDS70naFe/bAwdTUMOmPxs9iHEgqvNjhnH8cpy27OGh6chaB+Z/V0iWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ivvsFJFo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=F8o/KO4A; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62942onT224227
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 05:12:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RKuOK/Z9ewWumYHjX9jmi6qJ
	5KK/ehtHNSnD0EqSR48=; b=ivvsFJFoR3ORmo15BqPkdA5fQwVIkOt0GIwapQIY
	cLSmEmlG2G+HbCMJQGZLT+h61JNcc0E+rc/WO53M6CKY3FEx5fu4RKJhDbTNxNGu
	qXY6Fh9GbswrGBoJ9Udj1yNvcxYyJ6cCJf64s53VNV4GlohgFsF7lSHLi4umBPmp
	PHQA4ZWAq7mLaTozeOjAYJhchiPOUi1alpPVvLchQZcsWvx693r71rZ/IvFcAuN2
	Qd1sfo3p6+l/4jTi7RVxq+D+Anx5Bd1lOjmKEDSvttvf23qbcma8m1gJZCdQmZTJ
	jQRLwygSIsmk1YDqYQVzwzvlHqX5NNieFHdV0UUFZUVVwg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4crbbg3yp0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 05:12:48 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd7774be64so986332885a.0
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 22:12:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773033168; x=1773637968; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RKuOK/Z9ewWumYHjX9jmi6qJ5KK/ehtHNSnD0EqSR48=;
        b=F8o/KO4ATFHY8KqE3DghjAtK7a5E3yM6X5iPTLSieHKO5Iehpz+yNa0aYXShlz87De
         3AQ0SyAmZ78naD+OvAohCIuM85K4jD+LKKJHppFxgJ3sMwcNsV7rhKGGD8+l000rJgIc
         ES4ZHTeKDp4aEvPgEQCEQ6kc1N5c4j7rkcxFcbwkbbYPOqly5nnrY68ZdNGQy7jRYDoq
         jQiv/G6vwK1MAAADcRt4/HvU7a3jmP8AfYbl3dnuxoyTrsBi+IkkQ6i1yHi4Fd8YfQeo
         T3GzEthqQi39SoyQbC05o+Gbj8GXSj5RYSRSqCx6f8c0E0g6VH4uW1eqzxhcBEj4pBrP
         /mjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773033168; x=1773637968;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RKuOK/Z9ewWumYHjX9jmi6qJ5KK/ehtHNSnD0EqSR48=;
        b=pdHcfBKk735N1mlGxxGlcQ12NMJ4KCcKtOJ+LlEdz0vtNygN5PJnka264Xcs0InmL8
         OCqLG5qZKuzgcptfQrg1DxJ14gbio8AkNQXJCU/lih0NVrz+Qem4Q/Mo2Q3v5b+Dnq3V
         qpYd/JmWRGt1NsVTv3TEu3UixvbNo1h0/ZXuoA1CG/b6YfocUqSbI3GvhxUiLx4sJ1iD
         ryCa9uhmgASHlCiJGsu7lfnzyugVVr6v1oQp6Z0fcsQjoy7TWnn/4LBQNU/six0fN5aH
         TL1k5JXV7OH0FV5RmeWWV3XqGOxTTsLyc7D/Tj9iIp5vbJEBGop0/QnXLuRfjA8Hy/TD
         fAmw==
X-Forwarded-Encrypted: i=1; AJvYcCW2Upgg8SMPbPRTFj/nQOY/T2inrDnG6Nk6qxe7sD//c2gKVPg/W2b29NuFPu2tePAZMoc4EMQRDqAs@vger.kernel.org
X-Gm-Message-State: AOJu0Yz22zUgTTqaL9uS3fX3EgkZ8nIC0IJu7II59UxpaqDtQ+Cjq+tN
	v4lpstmC3uFUbSgF5NQ0iZjl0kitSNfIiBN8bNKy3JSrMPVJJfUB3tXRdbIuPIk/lg5UbplmBZw
	JyN+ciu0HpwuiPK/YzMWk1q3Anrph+CyBldcxOKJXWdc7EPriWBFUpx7sm8lY5Fcy
X-Gm-Gg: ATEYQzy6/beSl5dEocbd6LPy4pTCtoCpE/3xLqHohUWsTsDByUE+HW5+z6B0nmsXLLf
	u4oSQ4/0Mn3iBairFs3SpRR5BmdLuc6oCjH2m4e2V1eP7Xad8e1tVABNvksW4Mq08Q2AV8DgOuP
	JAaIe0sl1JZdtV4oto7Gsuf77AAYfw8YByeiGfKD/w65Vxgmp4ZWEd7idbTMt4oF3pmB3j4PTov
	L7jlSuk9EsD3X7lc+onvojfK78v4d0XU6b2Sa6Wmef5lpqj9w2jaO36LLSvYYMM+Prs4meWKQXW
	Pi2qO/TKp/Iejw21Xr8tTOgX2W8ex1uqyNiT5NeL89hTlrraq9//ZjqJh5s6vCDeAWHDotTLlnw
	j94QS5tKVv9XKgX3CtoZ8U8FzUxshGi989mB28Wpa38YIljvQ+N0AvV4T3STgyeGDbq9NptIfb7
	MGwejx+q42iP2LIKTNQ3jIeLUA+jham/cbTls=
X-Received: by 2002:a05:620a:269a:b0:8c7:140a:7dbf with SMTP id af79cd13be357-8cd6d4fcc9amr1249962785a.77.1773033168467;
        Sun, 08 Mar 2026 22:12:48 -0700 (PDT)
X-Received: by 2002:a05:620a:269a:b0:8c7:140a:7dbf with SMTP id af79cd13be357-8cd6d4fcc9amr1249960985a.77.1773033168085;
        Sun, 08 Mar 2026 22:12:48 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a13d07e0e6sm1953869e87.55.2026.03.08.22.12.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2026 22:12:47 -0700 (PDT)
Date: Mon, 9 Mar 2026 07:12:44 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: milos: add ADSP GPR
Message-ID: <rv3p3xhx7ge2cfn2mefad6joffmvqhp4yta7yifzufvv53hs3h@qb2le6csplir>
References: <20260306-milos-fastrpc-gpr-v1-0-893eb98869ce@fairphone.com>
 <20260306-milos-fastrpc-gpr-v1-2-893eb98869ce@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260306-milos-fastrpc-gpr-v1-2-893eb98869ce@fairphone.com>
X-Proofpoint-GUID: c0edxP-wzLwVdgfhf1sov8JwHmQOgVi2
X-Proofpoint-ORIG-GUID: c0edxP-wzLwVdgfhf1sov8JwHmQOgVi2
X-Authority-Analysis: v=2.4 cv=SumdKfO0 c=1 sm=1 tr=0 ts=69ae56d1 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=6H0WHjuAAAAA:8
 a=EUspDBNiAAAA:8 a=qELz02of8CWT8vQxZsoA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDA0NiBTYWx0ZWRfX+sNwu6WXUodO
 Gv9dYDX2fYVP7EsVmuqDp4CCNZFSqqavOpggnCOX3td+gkqbT2QIE8tYOfyUkXiBIBcHuxzqLVH
 wnP0dMqKYlgmVjsmyyr4QeDJBmQFwy3exCqp18qQbLYnT7Y42N7cuYTOQpTmXgy1NS6TH6wdk3c
 CaCqueOKm8ltxeYt6HzkU3cDNqv38aWUP7jMM49txRbWHnAGZUwxJXnXp9T7ujLcBZ0AYNZqDtK
 nOZdSMIZ3ZlOORfwfWh6DofTF5psC4OEzKdmE3G9NsR05td8Dzn6zHnjVGgkds5y1Zd78irqIeK
 Of2RYyAnsFe/M8mi3hKsdQ8enoYZqGVw8Hk4wIf2k3b3fcR5aV0KDU5a4oVM10nM8bJxkYNMaeV
 nCqQOQUP0qmdEjj9KviBM19CTG/2g8Vh9V8QR0JJhmv+g28IM2lTCzKbuTfgBjdnijPaQyCS+zI
 wG2YhdA+P7lnwTtvZYQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_02,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 impostorscore=0 spamscore=0 adultscore=0
 phishscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090046
X-Rspamd-Queue-Id: 64643233DDF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272683-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fairphone.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.975];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On Fri, Mar 06, 2026 at 03:01:20PM +0100, Luca Weiss wrote:
> Add the ADSP Generic Packet Router (GPR) device node as part of audio
> subsystem in Qualcomm Milos SoC.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/milos.dtsi | 41 +++++++++++++++++++++++++++++++++++++
>  1 file changed, 41 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

