Return-Path: <devicetree+bounces-319856-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id exXwF1xnR2ocXwAAu9opvQ
	(envelope-from <devicetree+bounces-319856-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 09:40:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A876FFA3E
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 09:40:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linux.spacemit.com header.s=mxsw2412 header.b=BDxmDcrT;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319856-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319856-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 85F43310D750
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 07:33:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C76235E1CC;
	Fri,  3 Jul 2026 07:33:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbguseast1.qq.com (smtpbguseast1.qq.com [54.204.34.129])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D42833F5BC;
	Fri,  3 Jul 2026 07:33:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783064038; cv=none; b=qxSTTd+mY8v8NHI1OOXf1+yj+fDnE1mE+XzC0bbheOBIsAeVmAnO0pJ36bfqsINu/N/WfI6OmoIi7/oZvvbp1j+h036fxE6RPwU5LRR3yNsOT5eK9gzeNFwArW9Hq0KmSTOtTHc6UrIxQTuT9X2nXGNnqO9a/xIsSpwGrcaULRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783064038; c=relaxed/simple;
	bh=tKPqf5yarZK6zNfYXIPfgF3cbgnCjfKlq9RaQ1hCxqw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VMGvEIo/PovQEsdOOnsIgdenBYXh7uYo3kGfScBPuYSh4boDt4G3JkOMEzLcaMRww/Uyky3axp+GYHUEWcVudT9F5wI/HbqxIWtpryTb3rnVLBJAmPEsKdBgF1qy34XUA+mQo1t66TrhKXh1ASare9xkwY+U31zsdvEofD5VnsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux.spacemit.com; spf=none smtp.mailfrom=linux.spacemit.com; dkim=pass (1024-bit key) header.d=linux.spacemit.com header.i=@linux.spacemit.com header.b=BDxmDcrT; arc=none smtp.client-ip=54.204.34.129
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.spacemit.com;
	s=mxsw2412; t=1783063977;
	bh=gXWkF2A3mVJNbYSFCvL2F0a8Ahpma+Tai1aJtrIXBG0=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=BDxmDcrTOxRB3rBaRjVKgRQ9s5puQT4DB3Uizm8Tj2AbAfUpG1Cl0lmnMD6FgWTri
	 eioeYVC4XzC/zigZPyfSHK/rZBoCmLnLICledgObH+t5Xdd04FEu01BNeX4jxT4Gql
	 5Y0TMo+JedH7+0o4TRKfOMqaq93na1DD9VTMr4kY=
X-QQ-mid: zesmtpsz6t1783063975t45f54373
X-QQ-Originating-IP: KFX4Gg3zb2MFVXa9zz+DeslXJr8n6gEqmyJWIeDTwM8=
Received: from [127.0.0.1] ( [120.237.158.181])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 03 Jul 2026 15:32:51 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 16044455994702524684
Message-ID: <138BCDE3F4A1D624+2488a822-cf77-4155-8492-b8a1c47d5589@linux.spacemit.com>
Date: Fri, 3 Jul 2026 15:32:50 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 02/12] rvtrace: Initial implementation of driver
 framework
To: Greg KH <gregkh@linuxfoundation.org>
Cc: anup.patel@oss.qualcomm.com, adrian.hunter@intel.com, alex@ghiti.fr,
 alexander.shishkin@linux.intel.com, andrew.jones@oss.qualcomm.com,
 anup@brainfault.org, atish.patra@linux.dev, conor+dt@kernel.org,
 devicetree@vger.kernel.org, irogers@google.com, jolsa@kernel.org,
 krzk+dt@kernel.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, mark.rutland@arm.com,
 mayuresh.chitale@oss.qualcomm.com, mchitale@gmail.com, mingo@redhat.com,
 namhyung@kernel.org, palmer@dabbelt.com, peterz@infradead.org,
 pjw@kernel.org, robh@kernel.org, sunilvl@oss.qualcomm.com
References: <20260429125135.1983498-3-anup.patel@oss.qualcomm.com>
 <BDD9553502347B02+ee3069d3-eb04-4a37-b364-107cf8d0653c@linux.spacemit.com>
 <2026070316-surgery-unneeded-bceb@gregkh>
From: Zane Leung <liangzhen@linux.spacemit.com>
In-Reply-To: <2026070316-surgery-unneeded-bceb@gregkh>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpsz:linux.spacemit.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: OKkKo7I1HxIe7dDN8bteV9gKWdb8stPzU1fGn8e6mkHClPS8EOnZnddN
	0v7qvv2sF9IWVMuh5G8PPjSCxFy63AUajVWfnhnln+hx4eZ47OWQgHAm2DzXAZrwS8ayeL4
	IkS/WtM1fTL+Y1nfgrJ+uX7hTi8TTOitFio2voIBLB3a0R+FjtdYhNeZKo2Y2MevXsqPf8v
	a5Ej8N3EEvgfg9Z2ynlCRmCDKVZb+G0mXM3Zv/M0imNu5vkEbWtw2TcLFZ5FbIGLEBrzDJW
	fGanbZbYlfzVyzSoVTHochze0cNaEZyM3ua/4StBxUX9+rPFpJY6uzlRwnLwJN0YlBO3OvV
	WGmM25oq/7PKBJxfqgLq39+m0n3un/q/TzgK50hlqeSgnc6hlxKIR+Dyx5vNQFfcFQ72ZNG
	iBp/R4p3qHZ/1ztCjefq7Gl5hdt+echbaSPHEy0dmOzhHQ/LGUp3FPXdaSpB2IblEqakipa
	skSfLJXe2wfI1U3MP3DrDH9pHuh73Gcb2L3yBnRqeKfccUS7zbTb6+ZOpjxqZ0G1v9yxMgA
	E4cKOvdCmkXhrGSe6HIJ3LK0M3Yt08n2dfVXgN5yvAf/TZHEmft/06F/CH18HXX96mJ3jWF
	Pob32vcRplpHse3cqFsMLCHNe0KZcq11FYUeUb04XXf3a3hqj7fEdgBGiEReuOA5o71YlJW
	W7z2seEPiB4eakdARVPZ9oDAMjdh70NQFyy8WkbamUkLMZEAWvFv+vX3t1FHVshK0ACsbVV
	T1kf39LBnfwr48RQdZdgNdE1ZvkeONwTtrL1BjUCKhAom+eyISnZLfr4EkxWbkEZAGzk8EJ
	wcQDvA01KixHWZtrNha8Px//DROg+fklCuWXHG3DRxXPJAYXsRYpO0N0F1jmMwQ2FQ3oKtX
	j1Pdk7OfNwIYFLfuu6SyJ8w9jqQnrox3ovdq92x9M22rHqgHhbsn9coZJ8u7seZyfLFhNbf
	mgoYSm+yRYZ6KjdkWqsUjjahSSetC2a0DPIA5ZJFCGLCTUrXECtS0CdYKyjf7z8UIB0si2s
	XQnorDDUClWI24e9tpm03gVqkhypHwe/XtYRecIdjRIWwi7HEcFLnntTuV3VZFitN4Ww7LV
	vh9H267XLnJ5BmYbGELNug=
X-QQ-XMRINFO: NS+P29fieYNwqS3WCnRCOn9D1NpZuCnCRA==
X-QQ-RECHKSPAM: 0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linux.spacemit.com:s=mxsw2412];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:gregkh@linuxfoundation.org,m:anup.patel@oss.qualcomm.com,m:adrian.hunter@intel.com,m:alex@ghiti.fr,m:alexander.shishkin@linux.intel.com,m:andrew.jones@oss.qualcomm.com,m:anup@brainfault.org,m:atish.patra@linux.dev,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:irogers@google.com,m:jolsa@kernel.org,m:krzk+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:mark.rutland@arm.com,m:mayuresh.chitale@oss.qualcomm.com,m:mchitale@gmail.com,m:mingo@redhat.com,m:namhyung@kernel.org,m:palmer@dabbelt.com,m:peterz@infradead.org,m:pjw@kernel.org,m:robh@kernel.org,m:sunilvl@oss.qualcomm.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[spacemit.com];
	FORGED_SENDER(0.00)[liangzhen@linux.spacemit.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[25];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-319856-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[liangzhen@linux.spacemit.com,devicetree@vger.kernel.org];
	FORGED_MUA_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,intel.com,ghiti.fr,linux.intel.com,brainfault.org,linux.dev,kernel.org,vger.kernel.org,google.com,lists.infradead.org,arm.com,gmail.com,redhat.com,dabbelt.com,infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[linux.spacemit.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,linux.spacemit.com:from_mime,linux.spacemit.com:dkim,linux.spacemit.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E5A876FFA3E


On 7/3/2026 1:41 PM, Greg KH wrote:
> On Thu, Jul 02, 2026 at 04:19:53PM +0800, Zane Leung wrote:
>> Hi, 
>>
>> Based on the current framework, I am concerned about how to support RISC-V ATB and reuse the Coresight component (ETB/tmc/TPIU) in the future.
> That is very vague.  Please provide specific examples.

According to the /trace control interface/ [1] spec: "The ATB Bridge allows sending RISC-V trace to Arm CoreSight 

infrastructure (instead of RISC-V compliant sink defined in this document) as an ATB initiator. ATB Bridge is not 

needed for RISC-V only systems."

For ATB Bridge, read trace using Coresight components (ETB/TMC/TPIU),  so we need also ARM coresight driver in
RISC-V trace systems. Current framework seems to only be applicable to RISC-V only systems, and does not support
ATB and  ARM coresight use case like the K3 (K3 SoC contains RISC-V Encoder, Funnel, ATB, CoreSight Funnel, and 

CoreSight TMC components). For more discussion, please refer to [2].


[1]: https://docs.riscv.org/reference/trace-control-interface/v1.0/tci_system_overview.html#atb-bridge
[2]: https://lore.kernel.org/all/20260414034153.3272485-1-liangzhen@linux.spacemit.com/

