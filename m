Return-Path: <devicetree+bounces-4002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8B27B0F0C
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 00:48:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 7D1B0281D69
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 22:48:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F5181D698;
	Wed, 27 Sep 2023 22:48:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6991D53A
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 22:48:03 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FEA5102;
	Wed, 27 Sep 2023 15:48:02 -0700 (PDT)
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38RMYSAr031747;
	Wed, 27 Sep 2023 22:47:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=date : from : to :
 cc : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=qcppdkim1; bh=r1Gvu1bF8AwQw7PU6ySJiAjPOzZWal6A/ahP3m0/aNc=;
 b=SCrZtmdngHHoXrS2RAGNAX3zLp1rcfWiFxWsQEm9EpG5dZ87SdvJ282pR60W1TN9zmUI
 /oetP36u4089dTMMZbhujEwmDtst+teSXPnRNycO4BgaxINvoVmsQf7EwB7J1cUmlIBK
 Y4E0IknVWT5iI3t9VVOW9A6CI/kyaDSoODeH/d9lvHyCAk/LwSihM4FcUUYyg+fHDVvq
 thBmYKt9Ln6N/4hmf7yb2jPF/0+wAUo4jLg2bz3txi9WPIpZOZclRkGFiezK1BYL84Zj
 o5kx8tJOcPboVpn1BsgbtB64mrglSUm/qW8kKJYJ2TMtJdzbFDFjvbdE6DRFe0NCLUW3 fw== 
Received: from nasanppmta01.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tcra20per-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 27 Sep 2023 22:47:21 +0000
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 38RMlKOj025359
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 27 Sep 2023 22:47:20 GMT
Received: from quicinc.com (10.49.16.6) by nasanex01b.na.qualcomm.com
 (10.46.141.250) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.36; Wed, 27 Sep
 2023 15:47:17 -0700
Date: Wed, 27 Sep 2023 15:47:16 -0700
From: Guru Das Srinagesh <quic_gurus@quicinc.com>
To: Pavan Kondeti <quic_pkondeti@quicinc.com>
CC: Guru Das Srinagesh <quic_gurus@quicinc.com>,
        Masahiro Yamada
	<masahiroy@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        "Andrew
 Morton" <akpm@linux-foundation.org>,
        Nicolas Schier <nicolas@fjasle.eu>,
        Konstantin Ryabitsev <konstantin@linuxfoundation.org>,
        Kees Cook
	<keescook@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, Will Deacon
	<will@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        <linux-kernel@vger.kernel.org>, <kernel@quicinc.com>,
        <workflows@vger.kernel.org>, <tools@linux.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-pm@vger.kernel.org>
Subject: Re: [PATCH v3 1/1] scripts: Add add-maintainer.py
Message-ID: <ZRSw9EGuYEpZC6GE@quicinc.com>
Mail-Followup-To: Pavan Kondeti <quic_pkondeti@quicinc.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Nicolas Schier <nicolas@fjasle.eu>,
	Konstantin Ryabitsev <konstantin@linuxfoundation.org>,
	Kees Cook <keescook@chromium.org>,
	Bjorn Andersson <andersson@kernel.org>, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-kernel@vger.kernel.org, kernel@quicinc.com,
	workflows@vger.kernel.org, tools@linux.kernel.org,
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
References: <cover.1693037031.git.quic_gurus@quicinc.com>
 <141b9fcab2208ace3001df4fc10e3dfd42b9f5d9.1693037031.git.quic_gurus@quicinc.com>
 <d0711242-df00-45c7-962f-841f7cefa7e3@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <d0711242-df00-45c7-962f-841f7cefa7e3@quicinc.com>
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01b.na.qualcomm.com (10.47.209.197) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: zhzRcrILGrIWX2kTrOYxJRxEppcDMjte
X-Proofpoint-GUID: zhzRcrILGrIWX2kTrOYxJRxEppcDMjte
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-27_15,2023-09-27_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 spamscore=0 mlxscore=0 lowpriorityscore=0 suspectscore=0 mlxlogscore=780
 malwarescore=0 priorityscore=1501 adultscore=0 clxscore=1015
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2309270196
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sep 26 2023 17:32, Pavan Kondeti wrote:
> On Sat, Aug 26, 2023 at 01:07:42AM -0700, Guru Das Srinagesh wrote:
> > +def gather_maintainers_of_file(patch_file):
> > +    all_entities_of_patch = dict()
> > +
> > +    # Run get_maintainer.pl on patch file
> > +    logging.info("GET: Patch: {}".format(os.path.basename(patch_file)))
> > +    cmd = ['scripts/get_maintainer.pl']
> > +    cmd.extend([patch_file])
> > +
> > +    try:
> > +        p = subprocess.run(cmd, stdout=subprocess.PIPE, check=True)
> > +    except:
> > +        sys.exit(1)
> > +
> > +    logging.debug("\n{}".format(p.stdout.decode()))
> > +
> > +    entries = p.stdout.decode().splitlines()
> > +
> > +    maintainers = []
> > +    lists = []
> > +    others = []
> > +
> > +    for entry in entries:
> > +        entity = entry.split('(')[0].strip()
> > +        if any(role in entry for role in ["maintainer", "reviewer"]):
> > +            maintainers.append(entity)
> > +        elif "list" in entry:
> > +            lists.append(entity)
> > +        else:
> > +            others.append(entity)
> > +
> > +    all_entities_of_patch["maintainers"] = set(maintainers)
> > +    all_entities_of_patch["lists"] = set(lists)
> > +    all_entities_of_patch["others"] = set(others)
> > +
> > +    return all_entities_of_patch
> > +
> 
> FYI, there are couple of issues found while playing around.

Thanks for testing this out :) I am no longer working on this due to pushback
from the maintainers in favour of b4.

> 
> - Some entries in MAINTAINERS could be "supporter"

This was intentional - I didn't want to include "supporter"s.

> - When names contain ("company"), the script fails to extract name.

Interesting... I had not tested this out.

In any case, I am not devoting resources to work on this unless I see some
interest from maintainers, which, as it stands currently, is nil.

Thanks for the support, Pavan.

Guru Das.

