Return-Path: <devicetree+bounces-261925-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4IkRDBP6gGn9DQMAu9opvQ
	(envelope-from <devicetree+bounces-261925-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 20:25:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C794D07F3
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 20:25:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 11F7130474C8
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 19:23:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13E29301702;
	Mon,  2 Feb 2026 19:23:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e8JgcAKC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="L5o+PNym"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0B5030148B
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770060235; cv=none; b=nTCWUg6kVhQtHCa+YHITgRC6ZuUVkVCagjbcezGBzV65U1mKZWhVhpaeqrx2AHTUbAILaF+MLWNhwESVwALF7vGCODusdIBI//x6QUE8ny9coPqLUbgu6gm0nTmEoAq2HVUCPT9tjboQKCE4qQVdBpwW+KZCP1XLkoIEOoSwHo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770060235; c=relaxed/simple;
	bh=5fQJ3Q0ygL3DyIIZ64zfAfwN2sl94U/ICWbIkeTP0Sg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tRz2cYIXQKti5hznPKxpMW27yPnNMaRWd8RREYuO5JBOG4GhS8iahL50uOMRV1CQmUDI5KNgzQIloCKQEVFZNMeYPGdBF2oUp/+F6v059DxJf10w+8eVVKVPzS4dZ7+Sn7o4glWbiw2arYLyu9768YZakRWp0eXiKY3XhSvBjwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e8JgcAKC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=L5o+PNym; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612EJGub1305623
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 19:23:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HBJukMAJZNKWelPlUcrghJJm
	C4lep46zx8gPQ6UDTq8=; b=e8JgcAKCEsQzlboSXtxbpB1lpiArWYBLIj81UcGO
	NsmR7OQPDi3ftMbxmrRvmJLrY+ExnF87udCsTYGoLrYuG3URVL6OeXs+kgcFuc3z
	WwCtsjCWPcQo7bVQxKvzUrr7zcxciruN+BPfhUXJ2h519yBDMDcyo80gfX4kG1TB
	6xHFSuPUOiKrFk54QtC13BYAsVrak1PREh8ZAyQgVSJPhV9tJp4Kpoj4AA1/cn9o
	Y0m/KhBsEPhPq7pRhpRFmOUYcjMZySi/6xo3zcYppGDdpoDBIJAvsXZeqXR58BmG
	OHV1IR9ETpDOyLdMQYz4irrHJE1XC5nRDMUxqiZfhGz6hg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c23h1mej9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 19:23:52 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c52f07fbd0so2124218585a.2
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 11:23:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770060232; x=1770665032; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=HBJukMAJZNKWelPlUcrghJJmC4lep46zx8gPQ6UDTq8=;
        b=L5o+PNym2pdrK0N5HFSvHh9Koik1nwc8B/YkxWPn1FAeV4mIL/pgq9Rxt5aJsERAPb
         Nrcvrw6slCL4F5LEcFeUzNC+MOV+4hrd0roqE25gnlyNiK/8kZuoduqwIrPAGmFW/PAK
         ml641CVMekgTww/AJueX6qWDLD0G29Y+ywlKHgBFK0Wge2VVUpEjCqX/l9F8EwqQ2Cdf
         CTN2LFNyIF/pET3qzuk5mCJxi4MsUZogHxvknD7YGlDmigJq+rHMJoyurQ2z7WJPbkMf
         ZrN+PpmvgEhMGEVtLXYfYCL+nrBTgNhACo1RhPbst4AKZkRl7Dxu+8zeadiis4Gdeb5b
         TQpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770060232; x=1770665032;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HBJukMAJZNKWelPlUcrghJJmC4lep46zx8gPQ6UDTq8=;
        b=Zw9dWDUF74i7OPAp1kNQeIIm0zLE2+FRGTGarCXQiiFFUUEspa0C4gky7lbPHS/08Z
         EhnvsWAIpgRw9yqock2RZ4HW4NSydkk7fSDe/IZmBPIcvCRP3mBgHLDsOSOuwfDi2RgL
         E6IEojmqzi4M/jbuZkxI5JEBdqu5EuSmVuJyhPyL0Cv9AmmQH5dN/nalKc2Tm64jzt7u
         6j5eZgVvwh20+spLwaSJPW7D72A5Xw9edCktTeix0VGET/gZ+wSjLdfA3SqikmrRmru5
         CXVTlWINbptpTbsXaZMBuQnSB05RWmzbVqkaZtMBh1fM5oGZq1cxLTe2+CaH8QR5+O5S
         1dag==
X-Forwarded-Encrypted: i=1; AJvYcCWjaX3aNDArk8otJIMO8fTLWGP5ha5KzKS4UMFT73RB2tltoaNKNEZWS2CbwPPNNH2Od0aWRoIqlmpK@vger.kernel.org
X-Gm-Message-State: AOJu0YwpNBwsemu+JT/ThuG6tIsuDquCjW8GM5pCVQymAVLP/Y+y5viJ
	KfsML/AHjOrH4qWFIYbK8R9bMB9ikgE2QxFG9/csN7ulTWPgB0QtERo+fE5dZ6gwKcN5NHglTp0
	1gJ06zvUqLyBnDRoMZwKI0O94LeutJLLNXU8MRSIkY5zAh/+CvbIBBv4IfMz/RaCY
X-Gm-Gg: AZuq6aIuMwyQb7hWCTbaAUE54xF/V25a2i09WRehIwGuuR2XSgl/x+1J39zwPlhXOiv
	ROgq6zMHa96tfVUPcOvHxkFX68ZDB6bMod1hKIHpJfqspbaZZ1gXIFFe6AchhS6ouKk2tLtwQS9
	IbuU38SuAJifMI+gW3WxnR6ZLElnW7dBh01KO9QY8A4ec8uuno5AOQB5EIRUEI0oGTwGu8YtvFr
	njNlBSVuXdoAiu96i9Npa8iojOm9KJtcnrieEk8my+EtwXbUR7MO6XSoJmWX8SX6+oNbpCUpE50
	dDtNWCH2E3bWhmQWNN8Zn1UV06Sp2ngEeZxOt70RORpcGRfGlHzF4b5E4aXnboX2ZWUU9DTGbfJ
	Qip6MUB4dpGKGKlC3jFEsjNXaMQtnVMfZp1eGd5Yi6tx9nDF2pJbzFAZkfZYfi7gV5AznV9AiVQ
	2lHj4B/nKJpUugGgl3WLauQK4=
X-Received: by 2002:a05:620a:29cc:b0:8c7:c54:4f4d with SMTP id af79cd13be357-8c9eb266be7mr1727063185a.39.1770060231932;
        Mon, 02 Feb 2026 11:23:51 -0800 (PST)
X-Received: by 2002:a05:620a:29cc:b0:8c7:c54:4f4d with SMTP id af79cd13be357-8c9eb266be7mr1727057585a.39.1770060231207;
        Mon, 02 Feb 2026 11:23:51 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e074819aasm3599123e87.5.2026.02.02.11.23.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 11:23:50 -0800 (PST)
Date: Mon, 2 Feb 2026 21:23:48 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>
Cc: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bjorn Andersson <andersson@kernel.org>,
        David Heidelberg <david@ixit.cz>, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH v3 1/7] media: dt-bindings: Document SC8280XP/SM8350 Venus
Message-ID: <rs6xte26bcb2ekvhjkeyrqr7lxg232ndj34gx22rvtvprxbou7@ojjcurmn7f32>
References: <20260125-iris-sc8280xp-v3-0-d21861a9ea33@oss.qualcomm.com>
 <d6KSmXDteJwEfGyWVdbVo-k0JONslgZlxBYNFBQ7CS2culpbLJhrT3pyf_OWVBAGBdovr8a2UIcVhgEvpiSd7A==@protonmail.internalid>
 <20260125-iris-sc8280xp-v3-1-d21861a9ea33@oss.qualcomm.com>
 <90bdef41-f588-4c02-9b9b-4f158a3cc64a@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <90bdef41-f588-4c02-9b9b-4f158a3cc64a@kernel.org>
X-Proofpoint-GUID: MZcNW3vdY41c-Yn_SKWx4lkrSloppJDk
X-Proofpoint-ORIG-GUID: MZcNW3vdY41c-Yn_SKWx4lkrSloppJDk
X-Authority-Analysis: v=2.4 cv=Fu8IPmrq c=1 sm=1 tr=0 ts=6980f9c9 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=lOLYe2B5VsFr_P7LuCcA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDE1MiBTYWx0ZWRfX+UUGpxl8hbue
 2nLoxScINr7Xh7NaSMCDQkaioQ48RFef4qhd+C5txISTOxSohSOLWO7m7TIpU+p4Z7NhVmLoAsE
 ngABdJZg3rTfyFhNfBcDkzWmRc6tTomuvavvAq+seIT2Hnl0LoSWT7cidn1sHfYOMmKiReb1Ia5
 JlyhqA1z88k8S4KTgIF9u8otAPtdzmsk95YL9Hv8UJboi2Ht9giCoxqCe/m4HAKkoVB7Jm8B7sS
 UMZWRdiGTUoLsCuQAS31Z9SLbF/M/+XBAUnaxPh9o/l9xHjkdE3uk/gJDxTQPvfKc/syq1kIYIb
 q6uRWSlZuUr9HXB0f/qBv57w5uaD/qUeqwpRThJH9qafmbaC55M9vKFCeE2lFuKZ9rhsg+5NqWS
 A21wpWYti2F2az/YyHhBtkzpEapxuhliK+t9eUTD+hmyesvojFrtgSG1FkMHOyP0mEZpr7QqaH+
 pNUk+mRIk6o8rYXGgZg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_05,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 clxscore=1015 suspectscore=0 bulkscore=0 malwarescore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602020152
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261925-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7C794D07F3
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 03:25:51PM +0000, Bryan O'Donoghue wrote:
> On 25/01/2026 15:32, Dmitry Baryshkov wrote:
> > +        iommus = <&apps_smmu 0x2100 0x400>;
> 
> Is this actually the correct set of iommus ?
> 
> Can we check to make sure ?

I will check.

-- 
With best wishes
Dmitry

