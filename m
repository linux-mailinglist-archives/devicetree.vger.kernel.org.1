Return-Path: <devicetree+bounces-276220-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iHkXI48TuGk7YwEAu9opvQ
	(envelope-from <devicetree+bounces-276220-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:28:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D58029B5B2
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 15:28:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0D0C43024CB2
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 14:27:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99066282F36;
	Mon, 16 Mar 2026 14:27:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DY4l0qEm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EXP9hStC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 749DF27EFEE
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 14:27:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773671265; cv=none; b=BI4SbeiRwF1nu+9oiicp7I94H6iESP98FelJqvK2LXc71rXMM83PN9aiH+NWoGHWTo7+b10XEGUqGyjni4likQdLkDfUCN5dcH2jLzh1KaVnH/3lzwEAhNtoTrUGalZw+E+QWZIYG4W2gLC3gth4qROOzsj9P/ogwSMW027uZ1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773671265; c=relaxed/simple;
	bh=ZJWP2XPIBdq0f0457iS1c2gdO4jhRPhcrXMS461DxYY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=vAlO7guN1oezUswCqVffldsA8qSFDV7i8RZ1FJXetKvTZ0w9ts/fzgG6ikkWXTBrhR/ymU7MxqLTJTIDUyKBB8Zose17gVhEACcYj0Y6JfFH0hAPxYS78rfHDou1GBY6DCQ+mlZnFnOF4zbQWEE57qimM+w6ciUlOXV5aGv58QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DY4l0qEm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EXP9hStC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62GC0dNh1724882
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 14:27:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Zx478U7FWl0KqKjnadyysy06
	Ggj5k5dxMbWmzfb1eeg=; b=DY4l0qEmxwlkzT6MqShZajFpm6oDVovfvdI/LGhi
	rNpyyu6b2GSb/yORSuQMMOuAPwCripkoUmSslKGvomtYuKsLCSp9GUNsrjeCEA5X
	eVw98uAeyOh+vJIB849VRNMAqKkj65VsGa+BAFi1p6fydtkZ8VnPKxoSmXSZfPKf
	hJZLS0Z6SGEdJgRLHNTfPI5uQgX/oTMX7ZCW7jSX0+JxuVbBujcZ3V2wJuQ+L07k
	TwoOh5jKUHYlIx61TO/ytFB+I4bt2WuF5PcU+yG1493qvdNP1li7d3kuAOhIm6rB
	8WloDRMtnMviwDQ5bho2yjLz+D5G1YDH+QTsbl/jkXzA3A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw0udp1ru-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 14:27:43 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd91c0262fso63985385a.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 07:27:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773671263; x=1774276063; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Zx478U7FWl0KqKjnadyysy06Ggj5k5dxMbWmzfb1eeg=;
        b=EXP9hStCNMiq4UNnkXdHwDM1PxNMm9ns3e+/MIX1hBezfCKPRKzoPpWySRCINrOim4
         2P1HlxE5F+BR6xjML66Tb4OerDBtxpNZMvZEyjs9Pq2VPUXlh4wVuiqR1gWiGXKfGulp
         rVpMIVVhgC6Hu51a2sxcnUzgkk93mpYxnIoPa1Ys1S1kWxTM6y+p4wznXLp7aOvWYSZ1
         aKF2dA6X1xcV3ab/eXzGL+AbSXLjSE3ZoSleyBqUzcCVw+ekYtlIsHZB3dT0L1FXzRmM
         vQdMkLOFLc+gjYX3CKAUn5YKIkMw0Ws7+MmEXodRCfOnHiN+EpjlDvsWTE6rg26ly86t
         A4IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773671263; x=1774276063;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zx478U7FWl0KqKjnadyysy06Ggj5k5dxMbWmzfb1eeg=;
        b=Q35I9/gAuy3n8j7oqKJqXcrqliZ0h6wwozSiHR4QRRKG0xORj02shfnGdrUwbQOho9
         bwqghym/11EhgJVkG5/w9sf++qHN79P65DM/ofl6bYY2nYbdTDGi/erGc8koPWLxlirk
         l5+dEggJeHyEbltSSQ/5ZL2m1NixGkCg8pvbrZMquya2nKcpKeoZf9KjQwUF1EXAFG06
         qCiKS+J36avA8Yx423sf/2YZpJX3OT3yrGoVOitpTu9oDGhEjoP9XGgG9v3df8yUclhR
         odRu97Ha290pFFfHsH8H8UVSv9t9DS4cHu7mMcKwheLt3PGppQLTc7iBZQ9TqjHhyN1u
         rCqw==
X-Forwarded-Encrypted: i=1; AJvYcCXoiczkAkfvQc0PvN4IrWq7TnhW3/DBy0xIWNEiHCBoKuiAXYvPoFHtSL9NXOzWVUNBqEBAHTOBOOVw@vger.kernel.org
X-Gm-Message-State: AOJu0YyZJOLAUd5zmxREwCnSVsRPzCxvQxMbCmJqjweH1oGqM8DMk+Sx
	iXOxylWPySUcjNUxctSmeRLDWOoAW7Z3O4zRWetKn1VeMyNIbnO7uzdnolOcY/WZIkUzAAc81dQ
	U5AW66LV5FsKHVdyK6dA/3MaTow8LUpiqrREllMmk0tes5vI/SDNfWRwfuy15MQbh
X-Gm-Gg: ATEYQzz1Ubwsmkt2jjLVRtK6zUB3T4ScgbKjFHi2vR3PmbVIE5xLGKxPXnKRklbtLoV
	J+isLUbcGYV3oqLn/TxNRPxpdpgrECeGvdxYUYKi/TfeEd9S+MXPiy2iAZSMPcMYwAfjWT4JTnF
	vb1++kOgH4YRL1Bsuo8aZ32d5lrV0T+hi6vcwdzfoXVbYtcLhqqr/swV2BE9MaDEe6gssMoWlXL
	Qo7cVL3ckfSuYxWKer27hPg0FARwyYtQJFU8wN6p1RpCuV6Ap6m3iXIhGW9lSODhnb5AD/7OqB3
	bI7VDlyTmPFsXFE45fYu91cLqLlDAcEjd+Yzue4n0bgZ7nb4U6E/XxXPICg0pJffoXWAgSkkU+X
	Y07l163dAWfgdllV8Tk2dgZIixnR49bjlr8ZM4L0s2gtdLJOlZ3dPSUjQayVFSBJj4qs72FJnko
	5vgPnNygZYi/2AEdFNGwC77k4GVFCsYXuN0qc=
X-Received: by 2002:a05:620a:6910:b0:8cd:8025:4e81 with SMTP id af79cd13be357-8cdb5a67ecdmr1750095185a.23.1773671262550;
        Mon, 16 Mar 2026 07:27:42 -0700 (PDT)
X-Received: by 2002:a05:620a:6910:b0:8cd:8025:4e81 with SMTP id af79cd13be357-8cdb5a67ecdmr1750089585a.23.1773671261978;
        Mon, 16 Mar 2026 07:27:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38a67d61f25sm35276501fa.7.2026.03.16.07.27.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 07:27:40 -0700 (PDT)
Date: Mon, 16 Mar 2026 16:27:39 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: hamoa: Fix OPP tables for all
 DisplayPort controllers
Message-ID: <6qhpiiroqnpzg44i2j5rgmlw7uaffw4t5z6gv2kgubfoqpktpd@r7h75knlv5a2>
References: <20260309-hamoa-fix-dp3-opp-table-v1-1-1a8141d71f9f@oss.qualcomm.com>
 <2f4e4cc7-2600-482e-88d9-d4b20d328a72@oss.qualcomm.com>
 <drcot4oxpea5lnpa5htrrl2n6tcc4ocxmb5vsho3ocouvajwlo@6ueabivtjy4h>
 <7d8211c5-7b12-4349-a329-cfb51a918a1c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7d8211c5-7b12-4349-a329-cfb51a918a1c@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=BJ2+bVQG c=1 sm=1 tr=0 ts=69b8135f cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=hLSxji5Pbl0OwNBPb8oA:9
 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: 0PIuoHJ66GnsVTuS4hBgCaZCK_YTQNGc
X-Proofpoint-ORIG-GUID: 0PIuoHJ66GnsVTuS4hBgCaZCK_YTQNGc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDEwOCBTYWx0ZWRfX+qWOp4UMWzA/
 CrD0eoDEoKQSe5GcrE+exUPd9Uy9bbg1KjDPuOLS0q96L2JNHCvXyPn/B+1phirCFcNG52XH1zM
 tq+QrkiWGCxt1Hc/1fdEILSvEYav7OkW/JPRX1lHZubwTAFCBGK2QPm9odP6cxCp+6EVsJusB4t
 VQcgeHILgH600/iLJogSdK5lWz2iI/zfL0v5HIZfwE4tPwPVss9BDk5xrd+jden4uBqRgl4+D/D
 1unb6rH8I25gNT3D4mOK/GxikyvWyyD/AKt44tcFAGK3TfKbjfmF9pvDJ/Emg9eyUOacPUd+zrA
 hReW/euz5awoyVgINaAar/Ytzr+RYw0TZW96MzW6V9RivwQFXT3gb/RXvmXzJiuexsNUKLLjg9V
 eQPlCaaN0j+o65LhosWeNtP8tzJP1oDGUrxfWb5aiytFdhTxvhUAOUg29rUZVipWDDC+9cCxYyA
 J41Ii/5H2efYb7jemiA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_04,2026-03-16_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 adultscore=0 priorityscore=1501 phishscore=0
 bulkscore=0 impostorscore=0 spamscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603160108
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276220-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
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
X-Rspamd-Queue-Id: 2D58029B5B2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 16, 2026 at 10:27:11AM +0100, Konrad Dybcio wrote:
> On 3/13/26 6:39 PM, Dmitry Baryshkov wrote:
> > On Tue, Mar 10, 2026 at 11:36:26AM +0100, Konrad Dybcio wrote:
> >> On 3/9/26 3:44 PM, Abel Vesa wrote:
> >>> According to internal documentation, the corners specific for each rate
> >>> from the DP link clock are:
> >>>  - LOWSVS_D1 -> 19.2 MHz
> >>>  - LOWSVS    -> 270 MHz
> >>>  - SVS       -> 540 MHz (594 MHz in case of DP3)
> >>
> >> This discrepancy sounds a little odd.. can we get some confirmation
> >> that it's intended and not an internal copypasta? (+Jagadeesh, Taniya)
> >> FWIW DP3 is not USB4- or MST-capable so it may as well be
> > 
> > DP3 link_clock is sourced from the eDP PHY. I assume there might some 
> > 
> >>
> >>>  - SVS_L1    -> 594 MHz
> >>>  - NOM       -> 810 MHz
> >>>  - NOM_L1    -> 810 MHz
> >>>  - TURBO     -> 810 MHz
> >>>
> >>> So fix all tables for each of the four controllers according to the
> >>> documentation.
> >>
> >> It sounds like a good move to instead keep only a single table for
> >> DP012 and a separate one for DP3 if it's really different
> >>
> >>> The 19.2 @ LOWSVS_D1 isn't needed as the controller will select 162 MHz
> >>> for RBR, which falls under the 270 MHz and it will vote for that LOWSVS
> >>> in that case.
> >>
> >> Even though the Linux OPP framework agrees with that sentiment today (it
> >> will set the correct rate via clk APIs and the correct rpmh vote for a rate
> >> that's >= 162), I have mixed feelings about relying on that
> > 
> > Why? 19.2 isn't an actual working frequency, as far as I can understand
> > anything. Or is it a working OPP for running "shared" clocks?
> 
> No, I meant removing the 162 case and relying on OPP to pick up the
> required-opps value from the next entry

Isn't it a documented way how the OPP tables work?

-- 
With best wishes
Dmitry

