Return-Path: <devicetree+bounces-267523-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AG0MNh9/nGm6IQQAu9opvQ
	(envelope-from <devicetree+bounces-267523-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 17:23:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E63C179ABD
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 17:23:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7E3D83079BAC
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 16:21:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4395D30DEDE;
	Mon, 23 Feb 2026 16:21:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JAUmDwYl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="A27PjmMV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7A52F3620
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 16:21:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771863665; cv=none; b=W47Yf65gNRRW1nbKaavnbzoN7wBKnFzC2vVzML2QKZMAjy/nuwNGaj9SWVlMZWxNLNYe07iQl0EkF6xqeroNPwDgColONZqtAWkHbbLDcEE/A063sa2WeQs3e4uUf3WZvwfIPXTGE0mX7n97LyLl31l9dtE667tbWX1OvU8Erx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771863665; c=relaxed/simple;
	bh=9XMww8y1cQhJYxDduGYdr8t8Ddjp20hYAB5EvGOs0Gg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RQpwdZY71Kct5XS+2tsCyNG0oRL66YMsIAf9t7XSEZLzy+oHeBKRdgjk4SoBWtvrpdl8GqQ5LX3bbxqsoZQgyMtBqNjU217MQ3nVCm7BhyEdCjzjNaxt2OJvIy7Q+1fAq1TfSxBRXHB5YWpm4l2v4LJ6ppE9XPywNjEkFsmL5xQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JAUmDwYl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=A27PjmMV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61NA9EBc2045688
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 16:21:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=xhVObjuoujdJeMjV3kqUuIrH
	fXuJ62UYDpmgw9/nppg=; b=JAUmDwYl3JuHlvGDb8ItAtK7tNmMBHv+HsgaOppy
	cWefqitW2Z0HJSJ97rTqyrQHlpNPRsISzIDfkoZR3Ck8MdWOKbJjt+wOfV9jKDfA
	DvJacs2bgcqyjBerf5ziTtWP7x93eMNnH6WirtKcB1+U8oocgatfSg6Hx1IFjclN
	reMSwjRRHB5GiazpcoJcfl/KcrOURAqXUVoIMW/rN+VoCCTqRKIoNb1QRApo9p34
	3VY6T3xjgnZ03z/l0COsYTxY9l0HuKj1KuY4V5ZPWEQU9T9Za8HdLsPVKb191nrj
	ypSRI4K3qqQx3PcLLX313nM0pjTRiJ1jVd/sCKHyOSRncg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cf5wawek0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 16:21:02 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb3ff05c73so4368693785a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 08:21:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771863661; x=1772468461; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xhVObjuoujdJeMjV3kqUuIrHfXuJ62UYDpmgw9/nppg=;
        b=A27PjmMVUg9J8cLHna42nQIR5etTnH1banCdb98mPVXGMMPeyo6lTgwS0GWkliicl6
         4TBQNtDYrA04Pg/5q/3FPnnTRQhApR7Zgoa3X6V66KB4zK3CQxDpz0ACp9HhpuwSiPWY
         1fMLjE78FsZUfOb1yC0TBYmnXibuzEBpqtko44vK+FS2b5yW+tU7hwVUk0uL2jq7jT8j
         7uMIQtH+N2hro0aHfon+qvJGu3saM1EZ8TSQtHENWYRGE7b203OoKbxFZRiPuT9FcjqZ
         SsaeTWCOoL6TTi2t/tRxyrPAUA1Ii5nlXrulTIbgOq39WDeJkHoFX0On8vUjB2/Nm4ua
         Qy2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771863661; x=1772468461;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xhVObjuoujdJeMjV3kqUuIrHfXuJ62UYDpmgw9/nppg=;
        b=Qyl2KWnyLIsPifHLd8L/LR7vsSJB2qXOTd96aIs5DsBbWlVAPKfE6KGvkI5feuAcRo
         UgfqqF1LaOpMHT4wKs6MSxBpPBxiNnJRQ9Y89dsRPxyIir8JTQyDeyvrJiW/X5mkev//
         vlzawgI3PyJ6of+xwES8gwg5uPDn1l/0ck++MeOtJvjO3fO2IkHA8Gfq4k+0JpxJqOC7
         /UKhKrVKKBXtpnECLLtoIJ0Sm3UnqUwBjMLrNBuJxCgV2flnsKQrF1oMHqc1t0kdPyRM
         Wz8HBw4SY/VOn4QWynihiAq7qSru/5nzqYiuixoA1SXRSi1Aw6w0exP1BftCP6hryCh9
         1QfQ==
X-Forwarded-Encrypted: i=1; AJvYcCXqP/c+VMizLpHepiCPy2IFyfA4I4rFAkqdid9EmmHCav+eZpeRt2CBl85DW6qdmRIeEfOgVWdLHf2G@vger.kernel.org
X-Gm-Message-State: AOJu0YzdqJVhNjpOxyzWtfHUy2zh/05bOmvq6VtuVZf+6EG45o3hRV0O
	Lcsra0fZ3uAy4ik1D8Ffs2YeISedLuaj6wxKhVOyr5M6sNzrjJCptI8fzJIzNSEaTOpyO24Vewq
	5FZk1sGX5FZTZuV4HFRRJS3rWMsg/5QqgLEEJZlvzcEdaY+Qc6EaFNOXs3gS9EZMB
X-Gm-Gg: AZuq6aLX26sKrbuIJjc0UwswJcf9NwCxg+UP8O2rzUajvN4Bya803YcTCEUReW7hhkJ
	JdKF55Nxir7C8VnNtVN7bdsYMfNByfaVZYjYzjW3xv65/+BZwesaPmqeH++tZDjcONi+e2VE27u
	oproipqW2ndwSj+aOpN5s3dyWTBk1DL2fvuZSWsK3lzcHHUECQ5XYQa7YTiwsbQApNeFq9/UdYh
	XIyNZ2Az00RcVDWiw/rOT57fSq6f8Uqcj4WZ/b9f989YI+R6BeVu3oAhOD+Qyfd3d9afMvy5ttJ
	zG/HRgPPg4WUt/lqj6iXfgf307fKQ1YQQYpmClLi31BHn9n2gXLdGZs/47yp8mh0/obxcbvtnck
	AHdntxYXnFdAbbLbmrRhkV5KsAJTEe0HmrLRz
X-Received: by 2002:a05:620a:1a1d:b0:8b2:f29e:3af8 with SMTP id af79cd13be357-8cb8ca76ab3mr1029273485a.59.1771863661435;
        Mon, 23 Feb 2026 08:21:01 -0800 (PST)
X-Received: by 2002:a05:620a:1a1d:b0:8b2:f29e:3af8 with SMTP id af79cd13be357-8cb8ca76ab3mr1029268085a.59.1771863660741;
        Mon, 23 Feb 2026 08:21:00 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483a9b6698asm337771805e9.2.2026.02.23.08.20.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 08:21:00 -0800 (PST)
Date: Mon, 23 Feb 2026 18:20:58 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-scsi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] scsi: ufs: qcom: dt-bindings: Document the Eliza UFS
 controller
Message-ID: <pszsqoifgo7oxmfhqrlukqo7ipnt37cqol4ecdjxswxpsaffqp@4qgiwwrmmi4j>
References: <20260223-eliza-bindings-ufs-v1-1-c4059596337f@oss.qualcomm.com>
 <qroy3qzudcgtme4xxo2dy63ay7ojd674ski3njwew5ky7rjw3m@iagzzywq3we2>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <qroy3qzudcgtme4xxo2dy63ay7ojd674ski3njwew5ky7rjw3m@iagzzywq3we2>
X-Authority-Analysis: v=2.4 cv=KJVXzVFo c=1 sm=1 tr=0 ts=699c7e6e cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=J6WbokQiPFq9zDEevI0A:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIzMDE0MCBTYWx0ZWRfX3LmRdGal5t7q
 sSq7Y6/UdmyhLqmfofM9oQe3C0GKMregh0/2J4HQQuKyo91V8TBmJQn0G+EikbJSTRpULdpbF5W
 N9m0nzRcGPrbJFSgSu5ljIf5CCboF4ydzmSRHw2n3LD6dDcvXD46JVo8q2RXpUmwRIhugsFf9d9
 lcP1XrELpmXqSydjwuDdC5mkR+FreJqbjSQDAglO3zs6GZxSFCJRewno/cmloAAEfVNGQ3zIi2l
 Eo646P/JdQGDVWVD1e8hY4InUgy95bmSpC2/rMgM7zMclZiP7UtBa6NOVQqv9YSjA+ZDLVtJa7+
 H4izgSvBK3KoSoAQgyvaREO7aE2nRxDl0EJikph+T23a9WIVucQf29BwrWpkBRAnx33CPZutKCm
 iHrsrNIA7VLuc5hi2b+pqnJrh0HBC75xcC/osWxjc/B/8GknqQ+wldp11acKBgauQvBnA7cRCYH
 +gIwrCa7xLsHwwvRVUg==
X-Proofpoint-ORIG-GUID: gua6Wqj00t5Z-Y0ylBe89QJbXmNbp8LK
X-Proofpoint-GUID: gua6Wqj00t5Z-Y0ylBe89QJbXmNbp8LK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-23_03,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 clxscore=1015 spamscore=0 malwarescore=0 adultscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602230140
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
	TAGGED_FROM(0.00)[bounces-267523-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3E63C179ABD
X-Rspamd-Action: no action

On 26-02-23 20:17:09, Manivannan Sadhasivam wrote:
> On Mon, Feb 23, 2026 at 04:32:35PM +0200, Abel Vesa wrote:
> > Document the UFS Controller on the Eliza Platform.
> > 
> 
> Could you please include some info about the IP revision, compatibility etc...?

Sure. Will do in the next version.

