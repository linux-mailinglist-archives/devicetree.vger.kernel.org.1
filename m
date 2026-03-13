Return-Path: <devicetree+bounces-275467-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8KrLAnZHtGk4kAAAu9opvQ
	(envelope-from <devicetree+bounces-275467-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:20:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4D3288056
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:20:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1E4CC304B439
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:17:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 473E03CA4BD;
	Fri, 13 Mar 2026 17:17:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lb9lVsQq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FV2pLzHi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02AE926ED45
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 17:17:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773422260; cv=none; b=DFDBKwwmMfpT7P807Db5PhiWmppPRub5p76Dg3KMugHhEe4nZz6+43l19NIZaRbn//kOy1Z1pE/2/q88bW4d44fiJILPDJqdsbdwQ8NqY0AJHTBD5K8Anjss4XBEtbqg1CSANq6lCi37ngRbGbbLPkm03iM9z66dU21zNcuRc0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773422260; c=relaxed/simple;
	bh=4kK19L+oEXhz99tTC22LyoVqDULChFng/uYuJ48vnUM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hcj0bGL/gR48GtFGmkhNNhJijqflQeqj7MwOEjAmRoWkWAWifSMGJFlql+l2UWdwCEL0+S2MQVY46FIs8jt9Eu5I1s0ppXZ98JY8hWAC5DghtPY7LYaeOHzta6ZTiO4PL6VDzQGtfgEwLfu/ezA6C52MtnIuKylB94YIPBX3ZdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lb9lVsQq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FV2pLzHi; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DAsPfe527763
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 17:17:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/vh3LYtVXjYBd57znGWiCW9ksY5SPB92ANnoZ24/pfw=; b=lb9lVsQq3tFEMg8l
	gbivZ4+l+do9gs6hvwgNA/JWaZRW4uBr/fW6TUS1tP2+7FeMWBIad3cRIBsFgve/
	LzdJEHJzxhZ64odidmJA04jYXHTO/hNjW+cYNCdWglFiKsx+k3ZoHUZU4tdJsKBT
	vOmQdYNfiln2ps1cP7i80p9LDcZm97a11vqXKwb0exmN4trBADE43COdNmqdnGjB
	nH8YQpDqSiNQySWd1QY1AkJFTXHoYxQqmdWQJi5ouXxzKYRzFMLUwPcLYTco6oOD
	//B/jqxB/yEZ+TbTidf6dw6f9c9fetSn53ndY9cup+tt7fDPD6pP6zLwuxcSfK/v
	bbdilQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvh84s9f5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 17:17:37 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd77bc8186so2204617585a.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773422256; x=1774027056; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/vh3LYtVXjYBd57znGWiCW9ksY5SPB92ANnoZ24/pfw=;
        b=FV2pLzHizsVGTPFGQxDn7kC+N7IelIpB/nd57cl1xWOdR9tNz1rfjQCiTAkXAY9zsS
         lcKQB8GmLpp4AQzaGuItVO6bd4ItE1stVfbSeIN8TdoNOIgEq6O6OwRwfPncsI+swUSJ
         HNuOTzjNpB0po9ZZYt9K+T21MqtejVStNoEyKcbUFcA1QNSYWgZqk6hpRg7N8rjp+Idf
         T9U9Lfk9okfYlFSBIsdKm0vJ6XmDEpuCWvIz+PhxuXjO94z6m3IwDuWYciNxc/b17H9M
         d9L7DlLqEzIqULlUMeyB8WAPmxcZ4cY043DItkK4iAfveE4wNZuC3I00GIEjBryDG7Ef
         3etw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773422256; x=1774027056;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/vh3LYtVXjYBd57znGWiCW9ksY5SPB92ANnoZ24/pfw=;
        b=WFBrbrDSPlNhwhNPcvZH1hxx1Qwm744H3JUo12HIv1CLoOhsDMvzY3yVb+RHzIShgz
         RcoLQTmzMDZE/u9AJPdliZ8WWYxxIS+5gPFByEagbeC1kxzXqz53IxhyNXclGEarcS2p
         dtho0WARADRcksxxs9ifpMEtSOTNCoD4yqI4JlG8atfW33MS17p9saz4v9lAbphq0gIq
         RO01i9g5Yyzi4hR9OjlebiqWoCHRZW28NoW0OforKzJKk8hiR9MaZu6p67NvmvSPDv3k
         ir8RuV0f5tUbBd89d95xzUNbbqxlI5e9f9y9eC9lWh01+ALGIY2drCi0lWhDXH4O+1hr
         Re8g==
X-Forwarded-Encrypted: i=1; AJvYcCVeJ3tK6oJwpEszdYoVwiymrRKx92z/vZv0GP3CyZ57A6ljRFeJmID2k0NqtQAhWn2TqUTL+WAFQzpw@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4bJzeAcIaPj+qfgPuXd1q3A8Pza9kmah5IqfjD1DHxl28tH3V
	1dK/5r2GBJNeU/f98zAaYaENxV1tVel5DFmqNsI/IjJfMrraeIe4nbH3KmKnjSjfCmmI32YxzH5
	LEEdnRc2IYGS1n1LAhFysaONie2F8yGlJ0b+mnB4dk9+vbaDUap5hHxaBVLs8yPr7
X-Gm-Gg: ATEYQzzcwEAj0Xw6kgKIlL0sBvi/bpKTP7a1ZVIjc40+R/RdTOZbxP9EhycD70m/tmU
	jIdmkQPGMNc/51zyc3Ep72jNJaX2z38MzzuGLvkgQCXjOpsAbDlA8L6kzqmD7SiD16Z185x+Uzx
	mQPxbIYtMQgDJAMqRMOpy8jHMoE8VfzD3np3G/rX/kUW03/w8WuOFCWH6QhMqEzUJeZaxFeZDvO
	WZeykYpGAmRoxcYJpfhj+DNI/I89EAAvu1o9TVySPb5K+PQRBerKgWGAvy4xMDMAu2BVMWR+j/5
	hyV0ZMoALeBIp7qea9J+MGgBXicYf4vKQULtrLmR7e6vr+hY486YWd38DvwzSFtfKOFMYLw8HmH
	Ex1pUon8bqWWFk4lO4/aBI4tfYki+f4CmCCsmon5cHo5AzVIV3TrDrRHfjGzGMl6CnR87H5JV5+
	xcwEjBhenwcpHdKOxmF2onLWNCDPzK0F86VqE=
X-Received: by 2002:a05:620a:4892:b0:8c9:f996:81f5 with SMTP id af79cd13be357-8cdb5a003fcmr602540285a.3.1773422255978;
        Fri, 13 Mar 2026 10:17:35 -0700 (PDT)
X-Received: by 2002:a05:620a:4892:b0:8c9:f996:81f5 with SMTP id af79cd13be357-8cdb5a003fcmr602534685a.3.1773422255437;
        Fri, 13 Mar 2026 10:17:35 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15602e5ffsm1682714e87.29.2026.03.13.10.17.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 10:17:34 -0700 (PDT)
Date: Fri, 13 Mar 2026 19:17:32 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Anvesh Jain P <anvesh.p@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Hans de Goede <hansg@kernel.org>,
        Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        platform-driver-x86@vger.kernel.org,
        Maya Matuszczyk <maccraft123mc@gmail.com>
Subject: Re: [PATCH v4 0/5] Add driver for EC found on Qualcomm reference
 devices
Message-ID: <azoaku7s3lxgcccc2rrp2bljbvqeitax2bl47k7eemy6uhcr2g@kveqod2tstgk>
References: <20260313-v04-add-driver-for-ec-v4-0-ca9d0efd62aa@oss.qualcomm.com>
 <132116be-2964-4b98-be2b-1baae5bfb58e@linaro.org>
 <19e8837b-d711-4d0e-ba9c-e9b2c8330969@oss.qualcomm.com>
 <aabf9bfa-aa90-411c-b9f6-706f963a5ab0@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aabf9bfa-aa90-411c-b9f6-706f963a5ab0@linaro.org>
X-Authority-Analysis: v=2.4 cv=OMoqHCaB c=1 sm=1 tr=0 ts=69b446b1 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=D2q40PupL0JkXlA-VGEA:9
 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDEzOCBTYWx0ZWRfX3J72kUcJbUHM
 0pVYIBcPIrdcsQZ7L7ZEqp/Bhta9VXHiMcN+OhLkJDWXe7jw/xfpGu/GHJyrGFouvBQM3S8ztN9
 Ui7JV2PK3AEVLXcHsSX/BDQnRl6J+Q6hSVg16OW44LhcoMR+Eir5FwYiKh5oCCqlJHJDAEq74ce
 Ocqjk05FJxxqsW+sy8/uwBFCj13V09tKGbUeY+/+ro+DXJtKjl2x3LNoKVKhCV4LgjIBvrkwn67
 9MIGdtBcIC+yT3b/1FJyU3s/OH3GhRIYBEDadmuYzaRE9zD/StQg7fg8/1AN29qDqOYcVTzbaPc
 yrmiYdRrVEmWSOE5PBP9HWtXwhU0UFmhyrCHyae12NXRZ9DL7V+N0Wa7a5ikMml7E8vspvwKRlu
 +KN38YwWMKV6ZDDIB9ptGemI++EMYYDaKaO4EWZ/heceLfx1YshHVIcJ+lCcX/xSC067cAHvJb3
 PTcuA8QqdV/2AW3EgCw==
X-Proofpoint-ORIG-GUID: WyYIesoKcKzmvgNqjNG0yAffGZiEX39S
X-Proofpoint-GUID: WyYIesoKcKzmvgNqjNG0yAffGZiEX39S
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_03,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 impostorscore=0 suspectscore=0 phishscore=0
 bulkscore=0 adultscore=0 spamscore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130138
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275467-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,kernel.org,linux.intel.com,vger.kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2E4D3288056
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 04:26:16PM +0000, Bryan O'Donoghue wrote:
> On 13/03/2026 13:15, Anvesh Jain P wrote:
> > > [   27.311768] qcom-hamoa-ec 6-0076: Fan count: 0 Fan Type: 0 Thermistor
> > > Mask: 0
> > > 
> > > ?
> > Hey Bryan,
> > Thanks for trying out the patches. CRDs typically ship with
> > very old firmware, and updating them to the latest version
> > should allow the thermal information to be populated correctly.
> 
> Sure but looking at this we still load happily even with all of these values
> set @ zero.
> 
> Fan Count == 0 || Thermistor == 0 => error and probe() fail.

WHy? EC is still there. QUite useless though.

> 
> ---
> bod

-- 
With best wishes
Dmitry

